package com.ams.controller;

import com.alibaba.fastjson.JSONObject;
import com.ams.dao.IAssetRepairDao;
import com.ams.domain.AssetAllot;
import com.ams.domain.AssetInventory;
import com.ams.domain.AssetRepair;
import com.ams.domain.AssetScrap;
import com.ams.service.*;
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
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/assetUtil")

public class AssetUtilController {
    @Autowired
    private IAssetRepairService assetRepairService;
    @Autowired
    private IAssetAllotService assetAllotService;
    @Autowired
    private IAssetScrapService assetScrapService;
    @Autowired
    private IAssetInventoryService assetInventoryService;
    @Autowired
    private IAssetService assetService;
    @Autowired
    private IAssetRepairDao IRepairDao;
    HttpSession session;

    @RequestMapping("/findAll.do")
    public ModelAndView findAllReceive(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                                @RequestParam(name = "checkerId", required = false, defaultValue = " ") Integer checkerId,
                                @RequestParam(name = "checkStatus", required = false, defaultValue = " ") Integer checkStatus,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        List<AssetRepair> assetRepairList = null;
        List<AssetAllot> assetAllotList = null;
        List<AssetScrap> assetScrapList = null;
        List<AssetInventory> assetInventoryList = null;
        Integer countRepair=IRepairDao.findRepairCount(checkerId);
        Integer countScrap=0;
        Integer countAllot=0;
        Integer countInventory=0;
        PageInfo RepairpageInfo = null;
        PageInfo AllotpageInfo = null;
        PageInfo ScrappageInfo = null;
        PageInfo InventorypageInfo = null;
        assetRepairList = assetRepairService.findAllReceive(page, size,checkerId,checkStatus);
//        assetAllotList = assetAllotService.findAllReceive(page, size,checkerId,checkStatus);
        assetScrapList = assetScrapService.findAllReceive(page, size,checkerId,checkStatus);
        assetInventoryList = assetInventoryService.findAllReceive(page, size,checkerId,checkStatus);
        RepairpageInfo= new PageInfo(assetRepairList);
//        AllotpageInfo= new PageInfo(assetAllotList);
        ScrappageInfo= new PageInfo(assetScrapList);
        InventorypageInfo= new PageInfo(assetInventoryList);
        mv.addObject("countRepair", countRepair);
        mv.addObject("RepairpageInfo", RepairpageInfo);
//        mv.addObject("AllotpageInfo", AllotpageInfo);
//        mv.addObject("countAllot", assetAllotList.size());
        mv.addObject("ScrappageInfo", ScrappageInfo);
        mv.addObject("countScrap", assetScrapList.size());
        mv.addObject("InventorypageInfo", InventorypageInfo);
        mv.addObject("countInventory", assetInventoryList.size());
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("/findAllSend.do")
    public ModelAndView findAllSend(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                                @RequestParam(name = "senderId", required = false, defaultValue = " ") Integer senderId,
                                @RequestParam(name = "checkStatus", required = false, defaultValue = " ") Integer checkStatus,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();

        List<AssetRepair> assetAllotList = null;
        PageInfo pageInfo = null;
        assetAllotList = assetRepairService.findAllSend(page, size,senderId,checkStatus);
        pageInfo= new PageInfo(assetAllotList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("assetRepair-page-list");
        return mv;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findAll(@RequestParam(name = "id", required = true, defaultValue = "") Integer id,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        AssetRepair assetRepair = null;
        assetRepair = assetRepairService.findByRepairId(id);
        mv.addObject("orders", assetRepair);
        mv.setViewName("assetRepair-show");
        return mv;
    }


    @ResponseBody
    @RequestMapping(value = "/addRepair.do")
    public String mobileFindAll(@RequestBody AssetRepair assetRepair) throws Exception {
        System.out.println(assetRepair);
        JSONObject jsonObject=new JSONObject();
        if(assetRepairService.addRepair(assetRepair) && assetService.changeStatus(assetRepair.getId(),1)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);

        }
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/updateRepair.do")
    public String updateAll(@RequestBody AssetRepair assetRepair) throws Exception {
        System.out.println(assetRepair);
        JSONObject jsonObject=new JSONObject();
        if(assetRepairService.updateRepair(assetRepair)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);

        }
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/changeCheckStatus.do")
    public String changeCheckStatus(
            @RequestBody HashMap<String, String> map) throws Exception {

        JSONObject jsonObject=new JSONObject();
        if(assetRepairService.changeRepairStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
            //        如果二级审核通过，则改变资产的状态为正常
            if (Integer.valueOf(map.get("status"))==4){
                assetService.changeStatus(Integer.valueOf(map.get("assetId")),0);
            }
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }



}
