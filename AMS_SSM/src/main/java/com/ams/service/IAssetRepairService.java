package com.ams.service;

import com.ams.domain.*;

import java.util.List;

public interface IAssetRepairService {

public List<AssetRepair> findAllReceive(int page, int size, Integer checkerId,Integer checkStatus)throws Exception;
public List<AssetRepair> findAllSend(int page, int size, Integer senderId,Integer checkStatus)throws Exception;

public AssetRepair findByRepairId(Integer assetRepairId) throws Exception;

public Boolean updateRepair(AssetRepair assetRepair) throws Exception;

public Boolean addRepair(AssetRepair assetRepair) throws Exception;

public Boolean deleteRepair(Integer id) throws Exception;

public Boolean changeRepairStatus(Integer id,Integer status) throws Exception;

public List<AssetRepair> fuzzyQueryRepair(int page,int size,String condition) throws Exception;



}
