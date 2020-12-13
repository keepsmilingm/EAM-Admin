package com.ams.service;

import com.ams.domain.*;

import java.util.List;

public interface IAssetScrapService {

    public List<AssetScrap> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus)throws Exception;
    public List<AssetScrap> findAllSend(int page, int size, Integer senderId,Integer checkStatus)throws Exception;

public AssetScrap findByScrapId(Integer assetScrapId) throws Exception;
public Boolean updateScrap(AssetScrap assetScrap) throws Exception;
public Boolean addScrap(AssetScrap assetScrap) throws Exception;
public Boolean deleteScrap(Integer id) throws Exception;
public Boolean changeScrapStatus(Integer id, Integer status) throws Exception;
public List<AssetScrap> fuzzyQueryScrap(int page, int size, String condition) throws Exception;



}
