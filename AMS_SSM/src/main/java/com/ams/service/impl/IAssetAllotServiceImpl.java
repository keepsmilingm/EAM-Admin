package com.ams.service.impl;

import com.ams.dao.IAssetAllotDao;
import com.ams.dao.IAssetAllotDao;
import com.ams.domain.*;
import com.ams.service.IAssetAllotService;
import com.ams.service.IAssetRepairService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IAssetAllotServiceImpl implements IAssetAllotService {

    @Autowired
    private IAssetAllotDao iAssetAllotDao;




    @Override
    public List<AssetAllot> findAllAllot(int page, int size, Integer senderId, Integer checkerId) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetAllotDao.findAllAllot(senderId,checkerId);
    }



    @Override
    public AssetAllot findByAllotId(Integer id) throws Exception {
        return iAssetAllotDao.findByAllotId(id);
    }



    @Override
    public Boolean updateAllot(AssetAllot assetAllot) throws Exception {
        return iAssetAllotDao.updateAllot(assetAllot);
    }


    @Override
    public Boolean addAllot(AssetAllot assetAllot) throws Exception {
        return iAssetAllotDao.addAllot(assetAllot);
    }



    @Override
    public Boolean deleteAllot(Integer id) throws Exception {
        return iAssetAllotDao.deleteAllot(id);
    }



    @Override
    public Boolean changeAllotStatus(Integer id, Integer status) throws Exception {
        return iAssetAllotDao.changeAllotStatus(id,status);
    }



    @Override
    public List<AssetRepair> fuzzyQueryAllot(int page, int size, String condition) throws Exception {
        return null;
    }

}
