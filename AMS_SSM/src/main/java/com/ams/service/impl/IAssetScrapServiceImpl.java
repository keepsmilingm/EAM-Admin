package com.ams.service.impl;

import com.ams.dao.IAssetScrapDao;
import com.ams.domain.*;
import com.ams.service.IAssetRepairService;
import com.ams.service.IAssetScrapService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IAssetScrapServiceImpl implements IAssetScrapService {

    @Autowired
    private IAssetScrapDao iAssetScrapDao;



    @Override
    public List<AssetScrap> findAllSend(int page, int size, Integer senderId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetScrapDao.findAllSend(senderId,checkStatus);
    }

    @Override
    public List<AssetScrap> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus) throws Exception {
        PageHelper.startPage(page, size);
        return iAssetScrapDao.findAllReceive(checkerId,checkStatus);
    }

    @Override
    public AssetScrap findByScrapId(Integer id) throws Exception {
        return iAssetScrapDao.findByScrapId(id);
    }



    @Override
    public Boolean updateScrap(AssetScrap assetScrap) throws Exception {
        return iAssetScrapDao.updateScrap(assetScrap);
    }




    @Override
    public Boolean addScrap(AssetScrap assetScrap) throws Exception {
        return iAssetScrapDao.addScrap(assetScrap);
    }


    @Override
    public Boolean deleteScrap(Integer id) throws Exception {
        return iAssetScrapDao.deleteScrap(id);
    }


    @Override
    public Boolean changeScrapStatus(Integer id, Integer status) throws Exception {
        return iAssetScrapDao.changeScrapStatus(id,status);
    }



    @Override
    public List<AssetScrap> fuzzyQueryScrap(int page, int size, String condition) throws Exception {
        return null;
    }

}
