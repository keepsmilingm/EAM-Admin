//package com.ams.controller;
//
//import com.alibaba.fastjson.JSONObject;
//import com.ams.domain.*;
//import com.ams.service.IAssetRepairService;
//import com.ams.service.IAssetService;
//import com.github.pagehelper.PageInfo;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import java.util.HashMap;
//import java.util.List;
//
//@Controller
//@RequestMapping("/assetRepair")
//
//public class AssetAllotController {
//    @Autowired
//    private IAssetRepairService assetAllotService;
//    @Autowired
//    private IAssetService assetService;
//    HttpSession session;
//
//    @RequestMapping("/findAllotList.do")
//    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
//                                @RequestParam(name = "size", required = true, defaultValue = "10")  Integer size,
//                                @RequestParam(name = "senderId", required = false, defaultValue = " ") Integer senderId,
//                                @RequestParam(name = "checkerId", required = false, defaultValue = " ") Integer checkerId,
//                                HttpServletRequest request)  throws Exception {
//        ModelAndView mv = new ModelAndView();
//        session=request.getSession();session.setAttribute("Allot",Allot);
//        session.setAttribute("senderId",senderId);session.setAttribute("checkerId",checkerId);
//        //为避免senderId或checkerId为null时存入session到前端使用出现null报错，存入空字符串
//        if (checkerId==null){
//            session.setAttribute("senderId",senderId);
//            session.setAttribute("checkerId","");
//        }
//        List<AssetRepair> assetRepairList = null;List<AssetScrap> assetScrapList = null;
//        List<AssetAllot> assetAllotList = null;List<AssetModify> assetModifyList = null;
//        List<AssetInventory> assetInventoryList = null;
//        PageInfo pageInfo = null;
//        switch(Allot){
//            case "Repair": assetRepairList = assetAllotService.findAllRepair(page, size,senderId,checkerId);
//                            pageInfo= new PageInfo(assetRepairList);break;
//            case "Scrap": assetScrapList = assetAllotService.findAllScrap(page, size,senderId,checkerId);
//                pageInfo= new PageInfo(assetScrapList);break;
//            case "Allot": assetAllotList = assetAllotService.findAllAllot(page, size,senderId,checkerId);
//                pageInfo= new PageInfo(assetAllotList);break;
//            case "Modify": assetModifyList = assetAllotService.findAllModify(page, size,senderId,checkerId);
//                pageInfo= new PageInfo(assetModifyList);break;
//            case "Inventory": assetInventoryList = assetAllotService.findAllInventory(page, size,senderId,checkerId);
//                pageInfo= new PageInfo(assetInventoryList);break;
//        }
//        mv.addObject("pageInfo", pageInfo);
//        mv.setViewName("assetAllot-page-list");
//        return mv;
//    }
//
//    @RequestMapping("/findById.do")
//    public ModelAndView findAll(@RequestParam(name = "id", required = true, defaultValue = "") Integer id,
//                                @RequestParam(name = "Allot", required = true, defaultValue = "") String Allot,
//                                HttpServletRequest request)  throws Exception {
//
//        ModelAndView mv = new ModelAndView();
//        session=request.getSession();
//        AssetRepair assetRepair = null;
//        AssetScrap assetScrap = null;
//        AssetAllot assetAllot = null;
//        AssetModify assetModify = null;
//        AssetInventory assetInventory = null;
//        switch(Allot){
//            case "Repair": assetRepair = assetAllotService.findByRepairId(id);
//                           mv.addObject("orders", assetRepair);break;
//            case "Scrap": assetScrap = assetAllotService.findByScrapId(id);;
//                          mv.addObject("orders", assetScrap);break;
//            case "Allot": assetAllot = assetAllotService.findByAllotId(id);
//                          mv.addObject("orders", assetAllot);break;
//            case "Modify": assetModify = assetAllotService.findByModifyId(id);
//                mv.addObject("orders", assetModify);break;
//            case "Inventory": assetInventory = assetAllotService.findByInventoryId(id);
//                mv.addObject("orders", assetInventory);break;
//        }
//
//        mv.setViewName("assetRepair-show");
//        return mv;
//    }
//
//
//    @ResponseBody
//    @RequestMapping(value = "/addRepair.do")
//    public String mobileFindAll(@RequestBody AssetRepair assetRepair) throws Exception {
//        System.out.println(assetRepair);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.addRepair(assetRepair) && assetService.changeStatus(assetRepair.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/updateRepair.do")
//    public String updateAll(@RequestBody AssetRepair assetRepair) throws Exception {
//        System.out.println(assetRepair);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.updateRepair(assetRepair)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/addScrap.do")
//    public String mobileFindAll(@RequestBody AssetScrap assetScrap) throws Exception {
//        System.out.println(assetScrap);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.addScrap(assetScrap) && assetService.changeStatus(assetScrap.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/updateScrap.do")
//    public String updateAll(@RequestBody AssetScrap assetScrap) throws Exception {
//        System.out.println(assetScrap);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.updateScrap(assetScrap)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/addAllot.do")
//    public String mobileFindAll(@RequestBody AssetAllot assetAllot) throws Exception {
//        System.out.println(assetAllot);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.addAllot(assetAllot) && assetService.changeStatus(assetAllot.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//
//    @ResponseBody
//    @RequestMapping(value = "/addModify.do")
//    public String mobileFindAll(@RequestBody AssetModify assetModify) throws Exception {
//        System.out.println(assetModify);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.addModify(assetModify) && assetService.changeStatus(assetModify.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//    @ResponseBody
//    @RequestMapping(value = "/updateModify.do")
//    public String updateAll(@RequestBody AssetModify assetModify) throws Exception {
//        System.out.println(assetModify);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.updateModify(assetModify) && assetService.changeStatus(assetModify.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/addInventory.do")
//    public String mobileFindAll(@RequestBody AssetInventory assetInventory) throws Exception {
//        System.out.println(assetInventory);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.addInventory(assetInventory) && assetService.changeStatus(assetInventory.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//    @ResponseBody
//    @RequestMapping(value = "/updateInventory.do")
//    public String updateAll(@RequestBody AssetInventory assetInventory) throws Exception {
//        System.out.println(assetInventory);
//        JSONObject jsonObject=new JSONObject();
//        if(assetAllotService.updateInventory(assetInventory) && assetService.changeStatus(assetInventory.getId(),1)){
//            jsonObject.put("state",true);
//        }else{
//            jsonObject.put("state",false);
//
//        }
//        return jsonObject.toJSONString();
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/changeCheckStatus.do")
//    public String changeCheckStatus(
//            @RequestBody HashMap<String, String> map) throws Exception {
//
//        JSONObject jsonObject=new JSONObject();
//
//        switch(map.get("Allot")){
//            case "Repair":
//                if(assetAllotService.changeRepairStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
//                    //        如果二级审核通过，则改变资产的状态为正常
//                    if (Integer.valueOf(map.get("status"))==4){
//                        assetService.changeStatus(Integer.valueOf(map.get("assetId")),0);
//                    }
//                    jsonObject.put("state",true);
//                }else{
//                    jsonObject.put("state",false);
//                }break;
//            case "Scrap":
//                if(assetAllotService.changeScrapStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
//                    //        如果二级审核通过，则改变资产的状态为报废 2
//                    if (Integer.valueOf(map.get("status"))==4){
//                        assetService.changeStatus(Integer.valueOf(map.get("assetId")),2);
//                    }
//                    jsonObject.put("state",true);
//                }else{
//                    jsonObject.put("state",false);
//                } break;
//            case "Allot":
//                if(assetAllotService.changeAllotStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
//                    //        如果二级审核通过，则改变资产的状态为报废 2
//                    if (Integer.valueOf(map.get("status"))==4){
//                        assetService.changeStatus(Integer.valueOf(map.get("assetId")),0);
//                    }
//                    jsonObject.put("state",true);
//                }else{
//                    jsonObject.put("state",false);
//                } break;
//            case "Modify":
//                if(assetAllotService.changeModifyStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
//                    //        如果二级审核通过，则改变资产的状态为报废 2
//                    if (Integer.valueOf(map.get("status"))==4){
//                        assetService.changeStatus(Integer.valueOf(map.get("assetId")),0);
//                    }
//                    jsonObject.put("state",true);
//                }else{
//                    jsonObject.put("state",false);
//                } break;
//            case "Inventory":
//                if(assetAllotService.changeInventoryStatus(Integer.valueOf(map.get("id")),Integer.valueOf(map.get("status")))){
//                    //        如果二级审核通过，则改变资产的状态为报废 2
//                    if (Integer.valueOf(map.get("status"))==4){
//                        assetService.changeStatus(Integer.valueOf(map.get("assetId")),0);
//                    }
//                    jsonObject.put("state",true);
//                }else{
//                    jsonObject.put("state",false);
//                } break;
//        }
//
//        return jsonObject.toJSONString();
//    }
//
//
//
//}
