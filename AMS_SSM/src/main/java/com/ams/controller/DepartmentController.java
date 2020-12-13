package com.ams.controller;


import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ams.dao.IDepartmentDao;
import com.ams.domain.Department;

import com.ams.service.IDepartmentService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.annotation.security.RolesAllowed;
import java.util.*;

@Controller
@RequestMapping(value = "/department",produces = {"text/html;charset=utf-8"})
//@ResponseBody
public class DepartmentController {
    private SqlSession sqlSession;
    @Autowired
    private IDepartmentService departmentService;


    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Department> departments=departmentService.findAll();
        //PageInfo就是一个分页Bean
        mv.addObject("departments", departments);
        mv.setViewName("department-page-list");
        return mv;
    }
    @RequestMapping("/findDepList.do")
    public ModelAndView findDepList() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Department> departments=departmentService.findAll();
        //PageInfo就是一个分页Bean
        mv.addObject("departments", departments);
        mv.setViewName("message-to-department");
        return mv;
    }



    @ResponseBody
    @RequestMapping(value = "/mobileFindAll.do")
    public String mobileFindAll() throws Exception {
        List<Department> departments=departmentService.findAll();
        System.out.println(departments);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",departments);
        return jsonObject.toJSONString();

    }

    @ResponseBody
    @RequestMapping(value = "/mobileFindById.do",method = RequestMethod.POST)
    public String mobileFindById(@RequestBody HashMap<String, String> map) throws Exception {
        System.out.println("接收到的ID:"+map.get("departmentId"));
        Department departments=departmentService.findById(Integer.valueOf(map.get("departmentId")));
        System.out.println(departments);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",departments);
        return JSONObject.toJSONString(jsonObject, SerializerFeature.WriteMapNullValue);


    }
    @RequestMapping("/findById.do")

    public ModelAndView findById(@RequestParam(name = "departmentId", required = true) Integer departmentId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Department department=departmentService.findById(departmentId);
        System.out.println(department);
        //PageInfo就是一个分页Bean
        mv.addObject("departmentDetail", department);
        mv.setViewName("department-page-list");
        return mv;
    }


    @RolesAllowed("ADMIN")
    @ResponseBody
    @RequestMapping(value = "/update.do",method = RequestMethod.POST)
    public String update(@RequestBody Department  department) throws Exception {
        System.out.println(department);
        JSONObject jsonObject=new JSONObject();
        if(departmentService.update(department)){
            Department newDepartment=departmentService.findById(department.getId());
            jsonObject.put("state",true);
            jsonObject.put("data",newDepartment);
            return jsonObject.toJSONString();
        }else{

            jsonObject.put("state",false);
            return jsonObject.toJSONString();
        }

    }
    @RolesAllowed("ADMIN")
    @ResponseBody
    @RequestMapping("/add.do")
    public String add(@RequestBody Department department) throws Exception {
        JSONObject jsonObject=new JSONObject();
        if(departmentService.add(department)){
            Department newDepartment=departmentService.findById(department.getId());
            jsonObject.put("state",true);
            jsonObject.put("data",newDepartment);
            return jsonObject.toJSONString();
        }else{

            jsonObject.put("state",false);
            return jsonObject.toJSONString();
        }
    }

    @RolesAllowed("ADMIN")
    @ResponseBody
    @RequestMapping(value = "/delete.do")
    public String delete(@RequestBody HashMap<String, String> map ) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(departmentService.delete(Integer.valueOf(map.get("id")))){

            jsonObject.put("state",true);
            jsonObject.put("message","删除成功");
            return jsonObject.toJSONString();
        }else{
            jsonObject.put("state",false);
            jsonObject.put("message","删除失败");
            return jsonObject.toJSONString();
        }


    }


    
}
