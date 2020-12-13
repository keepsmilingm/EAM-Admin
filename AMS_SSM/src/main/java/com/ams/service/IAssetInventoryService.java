package com.ams.service;

import com.ams.domain.*;

import java.util.List;

public interface IAssetInventoryService {
    
    public List<AssetInventory> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus)throws Exception;
    public List<AssetInventory> findAllSend(int page, int size, Integer senderId,Integer checkStatus)throws Exception;
public AssetInventory findByInventoryId(Integer AssetRepairId) throws Exception;
public AssetInventory findByAssetId(Integer id) throws Exception;
public Boolean updateInventory(AssetInventory assetInventory) throws Exception;
public Boolean addInventory(AssetInventory assetInventory) throws Exception;
public Boolean deleteInventory(Integer id) throws Exception;
public Boolean changeInventoryStatus(Integer id, Integer status) throws Exception;
public List<AssetRepair> fuzzyQueryInventory(int page, int size, String condition) throws Exception;



}
