package com.ams.service.impl;

import com.ams.dao.IAssetInventoryDao;
import com.ams.domain.*;
import com.ams.service.IAssetInventoryService;
import com.ams.service.IAssetRepairService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IAssetInventoryServiceImpl implements IAssetInventoryService {

    @Autowired
    private IAssetInventoryDao iAssetInventoryDao;

    @Override
    public List<AssetInventory> findAllSend(int page, int size, Integer senderId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetInventoryDao.findAllSend(senderId,checkStatus);
    }

    @Override
    public List<AssetInventory> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetInventoryDao.findAllReceive(checkerId,checkStatus);
    }



    @Override
    public AssetInventory findByInventoryId(Integer id) throws Exception {
        return iAssetInventoryDao.findByInventoryId(id);
    }

    @Override
    public AssetInventory findByAssetId(Integer id) throws Exception {
        return iAssetInventoryDao.findByAssetId(id);
    }


    @Override
    public Boolean updateInventory(AssetInventory assetInventory) throws Exception {
        return iAssetInventoryDao.updateInventory(assetInventory);
    }



    @Override
    public Boolean addInventory(AssetInventory assetInventory) throws Exception {
        return iAssetInventoryDao.addInventory(assetInventory);
    }


    @Override
    public Boolean deleteInventory(Integer id) throws Exception {
        return iAssetInventoryDao.deleteInventory(id);
    }


    @Override
    public Boolean changeInventoryStatus(Integer id, Integer status) throws Exception {
        return iAssetInventoryDao.changeInventoryStatus(id,status);
    }

    @Override
    public List<AssetRepair> fuzzyQueryInventory(int page, int size, String condition) throws Exception {
        return null;
    }

}
