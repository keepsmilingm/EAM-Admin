package com.ams.dao;
import com.ams.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IAssetAllotDao {

//    模糊查询时 参数LIKE '%${value}%'"  需要这么写
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM repair r, asset a where (r.senderId=#{senderId} or r.checkerId=#{checkerId}) and r.assetId=a.id ")
    public List<AssetRepair> findAllRepair(@Param("senderId") Integer senderId, @Param("checkerId") Integer checkerId) throws Exception;
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM scrap r, asset a where (r.senderId=#{senderId} or r.checkerId=#{checkerId}) and r.assetId=a.id ")
    public List<AssetScrap> findAllScrap(@Param("senderId") Integer senderId, @Param("checkerId") Integer checkerId) throws Exception;
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM allot r, asset a where (r.senderId=#{senderId} or r.checkerId=#{checkerId}) and r.assetId=a.id ")
    public List<AssetAllot> findAllAllot(@Param("senderId") Integer senderId, @Param("checkerId") Integer checkerId) throws Exception;
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM modify r, asset a where (r.senderId=#{senderId} or r.checkerId=#{checkerId}) and r.assetId=a.id ")
    public List<AssetModify> findAllModify(@Param("senderId") Integer senderId, @Param("checkerId") Integer checkerId) throws Exception;
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM inventory r, asset a where (r.senderId=#{senderId} or r.checkerId=#{checkerId}) and r.assetId=a.id ")
    public List<AssetInventory> findAllInventory(@Param("senderId") Integer senderId, @Param("checkerId") Integer checkerId) throws Exception;



    @Select("select * from repair where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "senderId", column = "senderId"),
            @Result(property = "assetId", column = "assetId"),
            @Result(property = "checkerId", column = "checkerId"),
            @Result(property = "reason", column = "reason"),
            @Result(property = "creatTime", column = "creatTime"),
            @Result(property = "checkStatus", column = "checkStatus"),
            @Result(property = "money", column = "money"),
            @Result(property = "type", column = "type"),
            @Result(property = "repairPic", column = "repairPic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetRepair findByRepairId(Integer id) throws Exception;

    @Select("select * from scrap where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "senderId", column = "senderId"),
            @Result(property = "assetId", column = "assetId"),
            @Result(property = "checkerId", column = "checkerId"),
            @Result(property = "reason", column = "reason"),
            @Result(property = "creatTime", column = "creatTime"),
            @Result(property = "checkStatus", column = "checkStatus"),
            @Result(property = "money", column = "money"),
            @Result(property = "type", column = "type"),
            @Result(property = "repairPic", column = "repairPic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetScrap findByScrapId(Integer id) throws Exception;
    @Select("select * from allot where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "senderId", column = "senderId"),
            @Result(property = "assetId", column = "assetId"),
            @Result(property = "checkerId", column = "checkerId"),
            @Result(property = "reason", column = "reason"),
            @Result(property = "creatTime", column = "creatTime"),
            @Result(property = "checkStatus", column = "checkStatus"),
            @Result(property = "money", column = "money"),
            @Result(property = "type", column = "type"),
            @Result(property = "repairPic", column = "repairPic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetAllot findByAllotId(Integer id) throws Exception;
    @Select("select * from modify where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "senderId", column = "senderId"),
            @Result(property = "assetId", column = "assetId"),
            @Result(property = "checkerId", column = "checkerId"),
            @Result(property = "reason", column = "reason"),
            @Result(property = "creatTime", column = "creatTime"),
            @Result(property = "checkStatus", column = "checkStatus"),
            @Result(property = "money", column = "money"),
            @Result(property = "type", column = "type"),
            @Result(property = "repairPic", column = "repairPic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetModify findByModifyId(Integer id) throws Exception;
    @Select("select * from inventory where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "senderId", column = "senderId"),
            @Result(property = "assetId", column = "assetId"),
            @Result(property = "checkerId", column = "checkerId"),
            @Result(property = "reason", column = "reason"),
            @Result(property = "creatTime", column = "creatTime"),
            @Result(property = "checkStatus", column = "checkStatus"),
            @Result(property = "money", column = "money"),
            @Result(property = "type", column = "type"),
            @Result(property = "repairPic", column = "repairPic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetInventory findByInventoryId(Integer id) throws Exception;

    @Update("update scrap set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},repairPic=#{repairPic} where id=#{id}")
    public Boolean updateScrap(AssetScrap asset) throws Exception;
    @Update("update allot set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},repairPic=#{repairPic} where id=#{id}")
    public Boolean updateAllot(AssetAllot asset) throws Exception;
    @Update("update modify set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},repairPic=#{repairPic} where id=#{id}")
    public Boolean updateModify(AssetModify asset) throws Exception;
    @Update("update repair set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},repairPic=#{repairPic} where id=#{id}")
    public Boolean updateRepair(AssetRepair asset) throws Exception;
    @Update("update inventory set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},repairPic=#{repairPic} where id=#{id}")
    public Boolean updateInventory(AssetInventory asset) throws Exception;



    @Insert("insert into repair( senderId ,assetId ,checkerId ,reason,money,type,repairPic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{repairPic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addRepair(AssetRepair asset) throws Exception;
    @Insert("insert into scrap( senderId ,assetId ,checkerId ,reason,money,type,repairPic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{repairPic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addScrap(AssetScrap asset) throws Exception;
    @Insert("insert into allot( senderId ,assetId ,checkerId ,reason,money,type,repairPic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{repairPic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addAllot(AssetAllot asset) throws Exception;
    @Insert("insert into modify( senderId ,assetId ,checkerId ,reason,money,type,repairPic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{repairPic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addModify(AssetModify asset) throws Exception;
    @Insert("insert into inventory( senderId ,assetId ,checkerId ,reason,money,type,repairPic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{repairPic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addInventory(AssetInventory asset) throws Exception;




    @Update("update repair set checkStatus=#{status} where id=#{id}")
    public Boolean changeRepairStatus(@Param("id") Integer id, @Param("status") Integer status) throws Exception;
    @Update("update scrap set checkStatus=#{status} where id=#{id}")
    public Boolean changeScrapStatus(@Param("id") Integer id, @Param("status") Integer status) throws Exception;
    @Update("update allot set checkStatus=#{status} where id=#{id}")
    public Boolean changeAllotStatus(@Param("id") Integer id, @Param("status") Integer status) throws Exception;
    @Update("update modify set checkStatus=#{status} where id=#{id}")
    public Boolean changeModifyStatus(@Param("id") Integer id, @Param("status") Integer status) throws Exception;
    @Update("update inventory set checkStatus=#{status} where id=#{id}")
    public Boolean changeInventoryStatus(@Param("id") Integer id, @Param("status") Integer status) throws Exception;



    @Delete("delete from repair where id=#{id}")
    Boolean deleteRepair(Integer id) throws Exception;
    @Delete("delete from scrap where id=#{id}")
    Boolean deleteScrap(Integer id) throws Exception;
    @Delete("delete from allot where id=#{id}")
    Boolean deleteAllot(Integer id) throws Exception;
    @Delete("delete from modify where id=#{id}")
    Boolean deleteModify(Integer id) throws Exception;
    @Delete("delete from inventory where id=#{id}")
    Boolean deleteInventory(Integer id) throws Exception;

    @Select("SELECT * FROM asset WHERE CONCAT(IFNULL(mingcheng,''),IFNULL(bianma,''),IFNULL(bumen,'')) LIKE '%${value}%'")
    public List<AssetRepair> fuzzyQuery(String condition) throws Exception;
}
