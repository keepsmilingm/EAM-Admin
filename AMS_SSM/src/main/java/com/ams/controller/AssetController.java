package com.ams.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ams.domain.Asset;
import com.ams.service.IAssetService;
import com.github.pagehelper.PageInfo;
import com.ams.domain.Orders;
import com.ams.service.IAssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/asset")
public class AssetController {

    @Autowired
    private IAssetService assetService;
    HttpSession session;

    //查询全部订单---未分页
//    @RequestMapping("/findAll.do")
//    public ModelAndView findAll() throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<Orders> ordersList = assetService.findAll();
//        mv.addObject("ordersList", ordersList);
//        mv.setViewName("orders-list");
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
        if(orderbys.equals("")){
            orderbys= (String) session.getAttribute("orderbys");
        }else{
            session.setAttribute("orderbys",orderbys);
        }
        System.out.println("这是ordrebys啊:"+orderbys);
        System.out.println("这是Condition啊:"+conditions);
        List<Asset> assetList = assetService.findAll(page, size,conditions,orderbys);
        for (Asset good : assetList) {
            System.out.println(good);
        }

        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(assetList);


        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("asset-page-list");
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
        List<Asset> assetList = assetService.findAll(page, size,conditions, orderbys);

        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(assetList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("asset-page-list");
        return mv;

    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id", required = true) Integer assetId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Asset asset = assetService.findById(assetId);
        System.out.println(asset);
        mv.addObject("asset",asset);
        mv.setViewName("asset-show");
        return mv;
    }

    @ResponseBody
    @RequestMapping("/findByIdJson.do")
    public String findByIdJson(@RequestParam(name = "id", required = true) Integer assetId) throws Exception {
        Asset asset = assetService.findById(assetId);
        System.out.println(asset);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",asset);

        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "/add.do",method = RequestMethod.POST)
    public String Add(@RequestBody Asset asset) throws Exception {
        assetService.add(asset);
        System.out.println(asset.getId());
        return "redirect:findById.do?id="+asset.getId();
    }

    @ResponseBody
    @RequestMapping(value = "/update.do" ,method = RequestMethod.POST)
    public String update(@RequestBody Asset asset) throws Exception {
        System.out.println(asset);

        JSONObject jsonObject=new JSONObject();
        if (assetService.update(asset)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }


    @ResponseBody
    @RequestMapping("/delete.do")
    public String delete(String id) throws Exception {
        System.out.println(id);
        JSONObject jsonObject=new JSONObject();
        if (assetService.delete(id)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "/deleteItems.do",method = RequestMethod.POST)
    @ResponseBody
    public String deleteItems(@RequestParam(name = "ids", required = true) String[] ids) throws Exception {
        System.out.println(ids);

        System.out.println(Arrays.toString(ids));
        Boolean flag=false;
        JSONObject jsonObject=new JSONObject();
        for(String id:ids){
            System.out.println(id);
            if (id.equals("on")){
                continue;
            }
            flag =assetService.delete(id);
        }
        if (flag){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",true);
        }

        return jsonObject.toJSONString();
    }


    @ResponseBody
    @RequestMapping(value = "/changeCheckStatus.do")
    public String changeCheckStatus(
            @RequestBody HashMap<String, String> map) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(assetService.changeStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }





}
