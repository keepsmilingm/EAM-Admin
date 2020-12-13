package com.ams.service.impl;

import com.ams.dao.IAssetDao;
import com.ams.domain.Asset;
import com.ams.service.IAssetService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AssetServiceImpl implements IAssetService {

    @Autowired
    private IAssetDao assetDao;

    @Override
    public List<Asset> findAll(int page, int size,String condition,String orderbys) throws Exception {

        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page, size,orderbys);
        return assetDao.findAll(condition);
    }

    @Override
    public Asset findById(Integer assetId) throws Exception {
        return assetDao.findById(assetId);
    }

    @Override
    public Asset findByCode(String code) throws Exception {
        return assetDao.findByCode(code);
    }

    @Override
    public Boolean changeStatus(Integer id, Integer status) throws Exception {
        return assetDao.changeStatus(id,status);
    }

    @Override
    public Boolean update(Asset asset) throws Exception {
        return assetDao.update(asset);
    }

    @Override
    public Boolean add(Asset asset) throws Exception {
        return assetDao.add(asset);
    }

    @Override
    public Boolean delete(String id) throws Exception {
        return assetDao.delete(id);
    }

    @Override
    public List<Asset> fuzzyQuery(int page,int size,String condition) throws Exception {
        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page, size);
        System.out.println(condition);
        return assetDao.fuzzyQuery(condition);
    }

//    @Override
//    public Orders findById(String ordersId) throws Exception{
//        return AssetDao.findById(ordersId);
//    }

}

