package com.ams.controller;


import com.alibaba.fastjson.JSONObject;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import org.apache.commons.lang.StringUtils;


@Controller
@RequestMapping("/file")
public class FileController {


    //传统上传方式
    @RequestMapping(value="/fileuploadDemo")
    @ResponseBody
    public String fileuploadDemo(HttpServletRequest request, HttpServletResponse response) throws Exception {
// 先获取到要上传的文件目录
        String path = request.getSession().getServletContext().getRealPath("/uploads");
        String filename="";
        List<String> filenames=new ArrayList<String>();
        JSONObject jsonObject=new JSONObject();
// 创建File对象，一会向该路径下上传文件
        File file = new File(path);
// 判断路径是否存在，如果不存在，创建该路径
        if(!file.exists()) {
            file.mkdirs();
        }
// 创建磁盘文件项工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
// 解析request对象
        List<FileItem> list = fileUpload.parseRequest(request);
// 遍历
        for (FileItem fileItem : list) {
// 判断文件项是普通字段，还是上传的文件
            if(fileItem.isFormField()) {
            }else {
/**上传文件项
 2. SpringMVC传统方式文件上传
 1. SpringMVC框架提供了MultipartFile对象，该对象表示上传的文件，要求变量名称必须和表单file标签的
 name属性名称相同。
 2. 代码如下
 3. 配置文件解析器对象
 **/
// 获取到上传文件的名称
                filename = fileItem.getName();

                System.out.println(filename);
                if (filename.indexOf("\\") != -1) {
                    filename = filename.substring(filename.lastIndexOf("\\"));
                }
                filename=filename.substring(filename.lastIndexOf(".") + 1);
                System.out.println(filename);
                // 把文件的名称设置唯一值，uuid
                String uuid = UUID.randomUUID().toString().replace("-", "");
                filename = uuid+"."+filename;
// 上传文件
                System.out.println(filename);
                fileItem.write(new File(file, filename));
// 删除临时文件
                fileItem.delete();


                filenames.add("/uploads/"+filename);
            }

        }
        jsonObject.put("state",true);
        jsonObject.put("filePath",StringUtils.strip(StringUtils.deleteWhitespace(filenames.toString()),"[]"));

//        return StringUtils.strip(StringUtils.deleteWhitespace(filenames.toString()),"[]"); //可将array转换string后去除中括号
        return jsonObject.toJSONString(); //可将array转换string后去除中括号

    }

}
