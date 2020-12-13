package com.ams.service;

import com.ams.domain.*;

import java.util.List;

public interface IAssetAllotService {


public List<AssetAllot> findAllAllot(int page, int size, Integer senderId, Integer checkerId)throws Exception;
public AssetAllot findByAllotId(Integer assetRepairId) throws Exception;
public Boolean updateAllot(AssetAllot assetAllot) throws Exception;
public Boolean addAllot(AssetAllot assetAllot) throws Exception;
public Boolean deleteAllot(Integer id) throws Exception;
public Boolean changeAllotStatus(Integer id, Integer status) throws Exception;
public List<AssetRepair> fuzzyQueryAllot(int page, int size, String condition) throws Exception;



}
