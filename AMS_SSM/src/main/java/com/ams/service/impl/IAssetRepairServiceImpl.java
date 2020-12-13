package com.ams.service.impl;

import com.ams.dao.IAssetRepairDao;
import com.ams.domain.*;
import com.ams.service.IAssetRepairService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class IAssetRepairServiceImpl implements IAssetRepairService {

    @Autowired
    private IAssetRepairDao iAssetRepairDao;


    @Override
    public List<AssetRepair> findAllSend(int page, int size, Integer senderId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetRepairDao.findAllSend(senderId,checkStatus);
    }

    @Override
    public List<AssetRepair> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetRepairDao.findAllReceive(checkerId,checkStatus);
    }


    @Override
    public AssetRepair findByRepairId(Integer id) throws Exception {
        return iAssetRepairDao.findByRepairId(id);
    }


    @Override
    public Boolean updateRepair(AssetRepair assetRepair) throws Exception {
        return iAssetRepairDao.updateRepair(assetRepair);
    }


    @Override
    public Boolean addRepair(AssetRepair assetRepair) throws Exception {
        return iAssetRepairDao.addRepair(assetRepair);
    }


    @Override
    public Boolean deleteRepair(Integer id) throws Exception {
        return iAssetRepairDao.deleteRepair(id);
    }



    @Override
    public Boolean changeRepairStatus(Integer id, Integer status) throws Exception {
        return iAssetRepairDao.changeRepairStatus(id,status);
    }


    @Override
    public List<AssetRepair> fuzzyQueryRepair(int page, int size, String condition) throws Exception {
        return null;
    }

}
