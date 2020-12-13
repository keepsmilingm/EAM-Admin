package com.ams.controller;

import com.alibaba.fastjson.JSON;

import com.alibaba.fastjson.JSONObject;
import com.ams.domain.UserInfo;
import com.ams.domain.Role;
import com.ams.domain.UserInfo;
import com.ams.service.IUserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;


@Controller
@RequestMapping(value = "/user",produces = { "application/json;charset=UTF-8" })
public class UserController {

    @Autowired
    private IUserService userService;
    HttpSession session;



//    登陆
@ResponseBody
@RequestMapping("/Login.do")
public String LoginByName(@RequestBody UserInfo userInfo) throws Exception {

    JSONObject jsonObject=new JSONObject();
    System.out.println(userInfo);
    UserInfo newUserInfo = userService.findByAccount(userInfo.getAccount());
    if(userInfo.getPassword().equals(newUserInfo.getPassword())){
        newUserInfo.setPassword("");
        jsonObject.put("state",true);
        jsonObject.put("data",newUserInfo);
        jsonObject.put("msg","欢迎登陆");
        return jsonObject.toJSONString();
    }else{
        jsonObject.put("state",false);
        jsonObject.put("msg","密码错误，请重试");
        return jsonObject.toJSONString();
    }
}


//用户端登陆

    //给用户添加角色
    @RequestMapping("/addRoleToUser.do")
    public String addRoleToUser(@RequestParam(name = "userId", required = true) Integer userId, @RequestParam(name = "ids", required = true) String[] roleIds) {
        userService.addRoleToUser(userId, roleIds);
        return "redirect:findAll.do";
    }

    //查询用户以及用户可以添加的角色
    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name = "id", required = true) Integer userid) throws Exception {
        ModelAndView mv = new ModelAndView();
        //1.根据用户id查询用户
        UserInfo userInfo = userService.findById(userid);
        //2.根据用户id查询可以添加的角色
        List<Role> otherRoles = userService.findOtherRoles(userid);
        mv.addObject("user", userInfo);
        mv.addObject("roleList", otherRoles);
        mv.setViewName("user-role-add");
        return mv;
    }

    //根据部门查id人员
    @RequestMapping("/findByDepId.do")
    @ResponseBody
    public String findByDepId(Integer id) throws Exception {
        List<UserInfo> userInfo = userService.findByDepId(id);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("sender",session.getAttribute("username"));
        jsonObject.put("senderId",session.getAttribute("userId"));
        jsonObject.put("data",userInfo);
        return jsonObject.toJSONString();
    }

    @RequestMapping("/findLoginUser.do")
    @ResponseBody
    public String findLoginUser() throws Exception {
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("sender",session.getAttribute("username"));
        jsonObject.put("senderId",session.getAttribute("userId"));
        return jsonObject.toJSONString();
    }

    //查询指定id的用户
    @RequestMapping("/findRoleById.do")
    public ModelAndView findRoleById(Integer id) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findById(id);
        mv.addObject("user", userInfo);
        mv.setViewName("role-show");
        return mv;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(Integer id) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findById(id);
        mv.addObject("user", userInfo);
        mv.setViewName("user-show");
        return mv;
    }


    //用户添加
    @RequestMapping("/save.do")
//    @PreAuthorize("authentication.principal.username == 'zyz'")
        public String save(UserInfo userInfo) throws Exception {
        userService.save(userInfo);
        return "redirect:findById.do?id="+userInfo.getId();
    }
    //用户添加

// 利用spring-security中存的用户姓名查找用户信息
    @ResponseBody
    @RequestMapping("/findByAccount.do")
    public String findByName() throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findByName(SecurityContextHolder.getContext().getAuthentication().getName());
        userInfo.setPassword("");
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",userInfo);

        return jsonObject.toJSONString();
    }

    @RequestMapping("/findByName.do")
    public ModelAndView findByName(HttpServletRequest request,HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
        HttpSession session=request.getSession();
        Object username=session.getAttribute("username");
        UserInfo userInfo = userService.findByName(String.valueOf(username));
        mv.addObject("user", userInfo);
        mv.setViewName("user-edit");
        return mv;
    }

//    获取审核人菜单
    @ResponseBody
    @RequestMapping("/getCheckerList.do")
    public String getCheckerList() throws Exception {
        List<UserInfo> checkerList = userService.getCheckerList();
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",checkerList);
        return jsonObject.toJSONString();
    }

    @RequestMapping("/updateUser.do")
    public String updateUser(UserInfo userInfo) throws Exception {
        System.out.println(userInfo);
        userService.UpdateUser(userInfo);
        return "redirect:findById.do?id="+userInfo.getId();
    }


//    @RequestMapping("/findAll.do")
//    @PreAuthorize("hasRole('ROLE_ADMIN')")
//    public ModelAndView fuzzyQuery() throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<UserInfo> userList = userService.findAll();
//
//        mv.addObject("userList", userList);
//
//        mv.setViewName("user-page-list");
//        return mv;
//    }
@RequestMapping("/findAll.do")

public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                            @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                            @RequestParam(name = "conditions", required = true, defaultValue = "") String conditions,
                            @RequestParam(name = "orderbys", required = true, defaultValue = "") String orderbys,

                            HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        System.out.println(orderbys);

        if(conditions.equals("")){
            conditions= (String) session.getAttribute("condition");
        }else{
            session.setAttribute("condition",conditions);
        }

        List<UserInfo> UserInfoList = userService.findAll(page, size,conditions,orderbys);
        for (UserInfo good : UserInfoList) {
            System.out.println(good);
        }

        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(UserInfoList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("user-page-list");
        return mv;
}
    @RequestMapping("/fuzzyQuery.do")
    public ModelAndView fuzzyQuery(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                   @RequestParam(name = "size", required = true, defaultValue = "10") Integer size,
                                   @RequestParam(name = "condition", required = false, defaultValue = "") String conditions,
                                   @RequestParam(name = "orderbys", required = false, defaultValue = "") String orderbys,
                                   HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        session.setAttribute("condition","");
        session.setAttribute("orderbys","");
        List<UserInfo> UserInfoList = userService.findAll(page, size,conditions, orderbys);

        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(UserInfoList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("user-page-list");
        return mv;

    }



    //移动端接口

//    @ResponseBody
//    @RequestMapping("/findAllJson.do")
//    public String findAllJson() throws Exception {
//
//        List<UserInfo> ps = userService.findAll();
//        System.out.println(JSON.toJSONString(ps));
//        JSONObject jsonObject=new JSONObject();
//        jsonObject.put("state",true);
//        jsonObject.put("data",ps);
//
//        return jsonObject.toJSONString();
//
//    }



    @RequestMapping(value = "/getJson.do", method = RequestMethod.POST)
    @ResponseBody
    public  UserInfo getJson(@RequestBody UserInfo userInfo) throws UnsupportedEncodingException {
        System.out.println(userInfo.getUsername());
        System.out.println("-----");

        userInfo.setUsername("返回");
        userInfo.setEmail("1245252");
        userInfo.setPhoneNum("43235141");
        return userInfo;

    }

    @RequestMapping("/delete.do")
    public String delete(Integer id) throws Exception {
        System.out.println(id);
        userService.delete(id);
        return "redirect:findAll.do?page=1&size=10";
    }

    @RequestMapping(value = "/deleteItems.do",method = RequestMethod.POST)
    @ResponseBody
    public String deleteItems(Integer[] ids) throws Exception {

        System.out.println(Arrays.toString(ids));
        for(Integer id:ids){
            System.out.println(id);
            userService.delete(id);
        }

        return "redirect:findAll.do?page=1&size=10";
    }

    @ResponseBody
//    @ResponseBody返回Json时必须的注解，RequestBody为提交json注解
    @RequestMapping(value = "/add.do",method = RequestMethod.POST)
    public String Add(@RequestBody UserInfo userInfo) throws Exception {
        userService.add(userInfo);
        System.out.println(userInfo.getId());
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("id",userInfo.getId());
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/update.do",method = RequestMethod.POST)
    public String update(@RequestBody UserInfo  userInfo) throws Exception {
        System.out.println(userInfo);
        JSONObject jsonObject=new JSONObject();
        if (userService.update(userInfo)){

            jsonObject.put("state",true);
            jsonObject.put("id",userInfo.getId());
        }else{
            jsonObject.put("state",false);
        }

        return jsonObject.toJSONString();

    }

}
