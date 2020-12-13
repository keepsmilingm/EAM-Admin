package com.ams.controller;


import com.alibaba.fastjson.JSONObject;
import com.ams.dao.IMessageDao;
import com.ams.domain.*;
import com.ams.service.IMessageService;
import com.ams.service.IUserService;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping(value = "/message",produces = {"text/html;charset=utf-8"})
//@ResponseBody
public class MessageController {
    private SqlSession sqlSession;
    @Autowired
    private IMessageService messageService;
    private IMessageDao messageDao;
    @Autowired
    private IUserService userService;

   
    private HttpSession session;
    
//    @ResponseBody
//    @RequestMapping(value = "/mobileFindAll.do")
//    public String mobileFindAll() throws Exception {
//        List<Message> message=messageService.findAll();
//        System.out.println(message);
//        JSONObject jsonObject=new JSONObject();
//        jsonObject.put("state",true);
//        jsonObject.put("data",message);
//        return jsonObject.toJSONString();
//
//
//    }



    @RequestMapping("/findM_CById.do")
    public ModelAndView findM_CById(@RequestParam(name = "messageId", required = true) Integer messageId,@RequestParam(name = "receiverId", required = true) Integer receiverId) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println(messageId);
        System.out.println(receiverId);
        FullMessage message=messageService.findM_CById(messageId,receiverId);
        System.out.println(message);
        //PageInfo就是一个分页Bean
        mv.addObject("message", message);
        mv.setViewName("message-show");
        return mv;
    }

//    查找不同收件状态消息数目
    @ResponseBody
    @RequestMapping("/findCheckCount.do")
    public String findCheckCount(@RequestBody HashMap<String, String> map) throws Exception {
        JSONObject jsonObject=new JSONObject();
        List<MessageCount> checkMessage=messageService.findCheckCount(Integer.valueOf(map.get("receiverId")));
        System.out.println("这是listCount"+checkMessage);
        jsonObject.put("state",true);
            jsonObject.put("data",checkMessage);
            return jsonObject.toJSONString();
    }

    //    查找不同收件状态消息数目
    @ResponseBody
    @RequestMapping("/findTypeCount.do")
    public String findTypeCount(@RequestBody HashMap<String, String> map) throws Exception {
        JSONObject jsonObject=new JSONObject();
        List<MessageCount> typeMessage=messageService.findTypeCount(Integer.valueOf(map.get("receiverId")));
        System.out.println("这是listCount"+typeMessage);
        jsonObject.put("state",true);
        jsonObject.put("data",typeMessage);
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping("/findToastMsg.do")
    public String findToastMsg(@RequestBody HashMap<String, String> map) throws Exception {
        JSONObject jsonObject=new JSONObject();
        List<MessageCount> typeMessage=messageService.findToastMsg(Integer.valueOf(map.get("receiverId")));
        System.out.println("这是listCount"+typeMessage);
        jsonObject.put("state",true);
        jsonObject.put("data",typeMessage);
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping("/findToastMsgInTime.do")
    public String findToastMsgInTime(@RequestBody HashMap<String, String> map) throws Exception {
        JSONObject jsonObject=new JSONObject();
        List<MessageCount> InTimeMessage=messageService.findToastMsgInTime(Integer.valueOf(map.get("receiverId")));
        for (MessageCount ms : InTimeMessage) {
            messageService.changeToastStatus(ms.getmId());
            }
        System.out.println("这是listCount"+InTimeMessage);
        jsonObject.put("state",true);
        jsonObject.put("data",InTimeMessage);
        return jsonObject.toJSONString();
    }


    @ResponseBody
    @RequestMapping(value = "/checkStatus.do",method = RequestMethod.POST)
    public String checkStatus(@RequestBody FullMessage  fullMessage) throws Exception {
        System.out.println(fullMessage);
        JSONObject jsonObject=new JSONObject();
        if(messageService.checkStatus(fullMessage)){
            jsonObject.put("state",true);
            return jsonObject.toJSONString();
        }else{

            jsonObject.put("state",false);
            return jsonObject.toJSONString();
        }

    }

//    查找收件箱中不同checkStatus（已读、未读、收藏、回收）的信息
    @RequestMapping("/findByType.do")
    public ModelAndView fuzzyQuery(@RequestParam(name = "page", required = true, defaultValue = "1") int page,
                                   @RequestParam(name = "size", required = true, defaultValue = "10") int size,
                                   @RequestParam(name = "userId", required = false, defaultValue = "") Integer userId,
                                   @RequestParam(name = "checkStatus", required = false, defaultValue = "") Integer checkStatus,
                                   @RequestParam(name = "type", required = false, defaultValue = "") Integer type,
                                   HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<MessageReceiver> MessageList = null;
        if(null != checkStatus){
            MessageList = messageService.findByCheckStatus(page, size,userId,checkStatus);
            System.out.println(MessageList.toString());
            session=request.getSession();
            session.setAttribute("userId",userId);
            session.setAttribute("checkStatus",checkStatus);
        }else if(null != type){
            MessageList = messageService.findByType(page, size,userId,type);
            System.out.println(MessageList.toString());
            session=request.getSession();
            session.setAttribute("userId",userId);
            session.setAttribute("type",type);
        }

        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(MessageList);
        System.out.println(pageInfo);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("message-page-list");
        return mv;

    }

//    //    查找收件箱中不同type（一般、紧急、通知）的信息
//    @RequestMapping("/findByType.do")
//    public ModelAndView fuzzyQuery(@RequestParam(name = "page", required = true, defaultValue = "1") int page,
//                                   @RequestParam(name = "size", required = true, defaultValue = "10") int size,
//                                   @RequestParam(name = "userId", required = false, defaultValue = "") Integer userId,
//                                   @RequestParam(name = "type", required = false, defaultValue = "") Integer type,
//                                   HttpServletRequest request) throws Exception {
//        ModelAndView mv = new ModelAndView();
//
//        List<Message> MessageList = messageService.findByType(page, size,userId,type);
//        System.out.println(MessageList.toString());
//        session=request.getSession();
//        session.setAttribute("userId",userId);
//        session.setAttribute("type",type);
//
//        //PageInfo就是一个分页Bean
//        PageInfo pageInfo = new PageInfo(MessageList);
//        System.out.println(pageInfo);
//        mv.addObject("pageInfo", pageInfo);
//        mv.setViewName("message-page-list");
//        return mv;
//
//    }


//    @ResponseBody
//    @RequestMapping(value = "/update.do",method = RequestMethod.POST)
//    public String update(@RequestBody Message  message) throws Exception {
//        System.out.println(message);
//        JSONObject jsonObject=new JSONObject();
//        if(messageService.update(message)){
//            Message newMessage=messageService.findM_CById(message.getId());
//            jsonObject.put("state",true);
//            jsonObject.put("data",newMessage);
//            return jsonObject.toJSONString();
//        }else{
//
//            jsonObject.put("state",false);
//            return jsonObject.toJSONString();
//        }
//
//    }

//    向message表中添加消息
    @ResponseBody
    @RequestMapping("/add.do")
    public String add(@RequestBody Message message) throws Exception {
        message.setSendTime(new Date());
        System.out.println(message);
        JSONObject jsonObject=new JSONObject();
        if(messageService.add(message)){
            jsonObject.put("state",true);
            jsonObject.put("msgId",message.getId());
            return jsonObject.toJSONString();
        }else{

            jsonObject.put("state",false);
            return jsonObject.toJSONString();
        }
    }

//    向message_receiver表中添加消息
    @ResponseBody
    @RequestMapping("/sendMsg.do")
    public String sendDepMsg(@RequestBody MessageReceiver messageReceiver) throws Exception {
        JSONObject jsonObject=new JSONObject();
        Integer DepId=messageReceiver.getReceiveDepId();
        List<UserInfo> uerList=userService.findByDepId(DepId);
        MessageReceiver tempReceiver=new MessageReceiver();
        for (UserInfo user : uerList) {
            System.out.println(user.getId());
            tempReceiver.setReceiverId(user.getId());
            tempReceiver.setReceiveDepId(messageReceiver.getReceiveDepId());
            tempReceiver.setMessageId(messageReceiver.getMessageId());
            tempReceiver.setCheckStatus(0);
            tempReceiver.setCheckTime(new Date());
            System.out.println(tempReceiver);
            if(messageService.sendMsg(tempReceiver)){
                jsonObject.put("state",true);

            }else{
                jsonObject.put("state",false);
            }

        }
       return jsonObject.toJSONString();

    }

    
    //循环发送消息给多人
    @ResponseBody
    @RequestMapping("/sendUserMsg.do")
    public String sendUserMsg(@RequestBody HashMap<String, String> map) throws Exception {
        MessageReceiver messageReceiver=new MessageReceiver();
        JSONObject jsonObject=new JSONObject();
        System.out.println(map.get("ids"));
        System.out.println(map.get("messageId"));
        String [] idArr= map.get("ids").split(",");
        for (int i=0;i<idArr.length;i++){
            if(idArr[i].equals("on")){
                continue;
            }

            messageReceiver.setMessageId(Integer.parseInt(map.get("messageId")));
            messageReceiver.setReceiverId(Integer.parseInt(idArr[i].trim()));
            messageReceiver.setCheckStatus(0);
            messageReceiver.setCheckTime(new Date());
            if (messageService.sendMsg(messageReceiver)){
                jsonObject.put("state",true);
            }else {

                jsonObject.put("state",false);
            }

        }
        return jsonObject.toJSONString();
    }
//    删除收件
    @ResponseBody
    @RequestMapping(value = "/deleteGet.do")
    public String deleteGet(@RequestBody HashMap<String, String> map ) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(messageService.deleteGet(Integer.valueOf(map.get("id")))){
            jsonObject.put("state",true);
            jsonObject.put("message","删除成功");
            return jsonObject.toJSONString();
        }else{
            jsonObject.put("state",false);
            jsonObject.put("message","删除失败");
            return jsonObject.toJSONString();
        }


    }
//    删除发件
    @ResponseBody
    @RequestMapping(value = "/deleteSend.do")
    public String deleteSend(@RequestBody HashMap<String, String> map ) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(messageService.deleteSend(Integer.valueOf(map.get("id")))){
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
