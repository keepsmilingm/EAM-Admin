package com.ams.controller;

import com.alibaba.fastjson.JSONObject;
import com.ams.domain.AssetScrap;
import com.ams.service.IAssetScrapService;
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
@RequestMapping("/assetScrap")

public class AssetScrapController {
    @Autowired
    private IAssetScrapService assetScrapService;
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
        List<AssetScrap> assetList = null;
        PageInfo pageInfo = null;
        assetList = assetScrapService.findAllReceive(page, size,checkerId,checkStatus);
        pageInfo= new PageInfo(assetList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("assetScrap-page-list");
        return mv;
    }

    @RequestMapping("/findAllSend.do")
    public ModelAndView findAllSend(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
                                @RequestParam(name = "senderId", required = false, defaultValue = " ") Integer senderId,
                                @RequestParam(name = "checkStatus", required = false, defaultValue = " ") Integer checkStatus,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();

        List<AssetScrap> assetAllotList = null;
        PageInfo pageInfo = null;
        assetAllotList = assetScrapService.findAllSend(page, size,senderId,checkStatus);
        pageInfo= new PageInfo(assetAllotList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("assetScrap-page-list");
        return mv;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findAll(@RequestParam(name = "id", required = true, defaultValue = "") Integer id,
                                HttpServletRequest request)  throws Exception {
        ModelAndView mv = new ModelAndView();
        session=request.getSession();
        AssetScrap assetScrap = null;
        assetScrap = assetScrapService.findByScrapId(id);
        mv.addObject("orders", assetScrap);
        mv.setViewName("assetScrap-show");
        return mv;
    }


    @ResponseBody
    @RequestMapping(value = "/addScrap.do")
    public String mobileFindAll(@RequestBody AssetScrap assetScrap) throws Exception {
        System.out.println(assetScrap);
        JSONObject jsonObject=new JSONObject();
        assetScrap.setCreatTime(new Date());
        if(assetScrapService.addScrap(assetScrap) && assetService.changeStatus(assetScrap.getId(),2)){
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);

        }
        return jsonObject.toJSONString();
    }

    @ResponseBody
    @RequestMapping(value = "/updateScrap.do")
    public String updateAll(@RequestBody AssetScrap assetScrap) throws Exception {
        System.out.println(assetScrap);
        JSONObject jsonObject=new JSONObject();
        if(assetScrapService.updateScrap(assetScrap)){
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
        if(assetScrapService.changeScrapStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
            //        如果二级审核通过，则改变资产的状态为正常
            if (Integer.valueOf(map.get("status"))==4){
                assetService.changeStatus(Integer.valueOf(map.get("assetId")),2);
            }
            jsonObject.put("state",true);
        }else{
            jsonObject.put("state",false);
        }
        return jsonObject.toJSONString();
    }



}
