package com.ams.service;

import com.ams.domain.Asset;


import java.util.List;

public interface IAssetService {
    public List<Asset> findAll(int page,int size,String condition,String orderbys)throws Exception;
    public Asset findById(Integer assetId) throws Exception;
    public Asset findByCode(String code) throws Exception;
    public Boolean changeStatus(Integer id ,Integer status) throws Exception;
    public Boolean update(Asset asset) throws Exception;
    public Boolean add(Asset asset) throws Exception;
    public Boolean delete(String id) throws Exception;
    public List<Asset> fuzzyQuery(int page,int size,String condition) throws Exception;
}
