package com.ams.controller;

import com.alibaba.fastjson.JSONObject;
import com.ams.domain.*;
import com.ams.service.IAssetInventoryService;
import com.ams.service.IAssetRepairService;
import com.ams.service.IAssetService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/assetInventory")

public class AssetInventoryController {
    @Autowired
    private IAssetInventoryService assetInventoryService;
    @Autowired
    private IAssetService assetService;
    HttpSession session;

    @RequestMapping("/findAllReceive.do")
    public ModelAndView findAllReceive(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                       @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                                       @RequestParam(name = "checkerId", required = false, defaultValue = " ") Integer checkerId,
                                       @RequestParam(name = "checkStatus", required = false, defaultValue = " ") Integer checkStatus,
                                       HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        List<AssetInventory> assetList = null;
        PageInfo pageInfo = null;
        assetList = assetInventoryService.findAllReceive(page, size,checkerId,checkStatus);
        pageInfo= new PageInfo(assetList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("assetInventory-page-list");
        return mv;
    }

    @RequestMapping("/findAllSend.do")
    public ModelAndView findAllSend(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                    @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                                    @RequestParam(name = "senderId", required = false, defaultValue = " ") Integer senderId,
                                    @RequestParam(name = "checkStatus", required = false, defaultValue = " ") Integer checkStatus,
                                    HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();

        List<AssetInventory> assetAllotList = null;
        PageInfo pageInfo = null;
        assetAllotList = assetInventoryService.findAllSend(page, size,senderId,checkStatus);
        pageInfo= new PageInfo(assetAllotList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("assetInventory-page-list");
        return mv;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findAll(@RequestParam(name = "id", required = true, defaultValue = "") Integer id,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        AssetInventory assetInventory = null;
        assetInventory = assetInventoryService.findByInventoryId(id);
        mv.addObject("orders", assetInventory);
        mv.setViewName("assetInventory-show");
        return mv;
    }

    @RequestMapping("/findByAssetId.do")
    public ModelAndView findByAssetId(@RequestParam(name = "id", required = true, defaultValue = "") Integer id,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        AssetInventory assetInventory = null;
        assetInventory = assetInventoryService.findByAssetId(id);
        mv.addObject("orders", assetInventory);
        mv.setViewName("assetInventory-show");
        return mv;
    }
    @ResponseBody
    @RequestMapping("/findByCode.do")
    public String findCode(@RequestParam(name = "code", required = true, defaultValue = "") String code,
                                HttpServletRequest request)  throws Exception {

        Asset asset=assetService.findByCode(code);
        AssetInventory assetInventory=assetInventoryService.findByAssetId(asset.getId());
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("state",true);
        jsonObject.put("data",assetInventory);
        return jsonObject.toJSONString();
    }


    @ResponseBody
    @RequestMapping(value = "/addInventory.do")
    public String mobileFindAll(@RequestBody AssetInventory assetInventory) throws Exception {
        System.out.println(assetInventory);
        assetInventory.setCreatTime(new Date());
        JSONObject jsonObject=new JSONObject();
        if(assetInventoryService.addInventory(assetInventory) && assetService.changeStatus(assetInventory.getId(),4)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);

        }
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/updateInventory.do")
    public String updateAll(@RequestBody AssetInventory assetInventory) throws Exception {
        System.out.println(assetInventory);
        JSONObject jsonObject=new JSONObject();
        if(assetInventoryService.updateInventory(assetInventory)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);

        }
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/changeCheckStatus.do")
    public String changeCheckStatus(@RequestBody HashMap<String, String> map) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(assetInventoryService.changeInventoryStatus(Integer.valueOf(map.get("id")),4)){
            assetService.changeStatus(Integer.valueOf(map.get("assetId")),Integer.valueOf(map.get("status")));
            //        如果二级审核通过，则改变资产的状态为正常
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }




}
