package com.ams.dao;
import com.ams.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IAssetInventoryDao {

    //    模糊查询时 参数LIKE '%${value}%'"  需要这么写
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM inventory r, asset a where r.senderId=#{senderId}  and r.assetId=a.id and r.checkStatus=#{checkStatus}")
    public List<AssetInventory> findAllSend(@Param("senderId")Integer senderId,@Param("checkStatus")Integer checkStatus) throws Exception;

    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM inventory r, asset a where  r.checkerId=#{checkerId} and r.assetId=a.id and r.checkStatus=#{checkStatus}")
    public List<AssetInventory> findAllReceive(@Param("checkerId")Integer checkerId,@Param("checkStatus")Integer checkStatus) throws Exception;


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
            @Result(property = "pic", column = "pic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetInventory findByInventoryId(Integer id) throws Exception;

    @Select("select * from inventory where assetId=#{id}")
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
            @Result(property = "pic", column = "pic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetInventory findByAssetId(Integer id) throws Exception;

    @Update("update inventory set checkerId=#{checkerId} ,reason=#{reason},pic=#{pic} where id=#{id}")
    public Boolean updateInventory(AssetInventory asset) throws Exception;


    @Insert("insert into inventory( senderId ,assetId ,checkerId ,reason,pic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{pic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addInventory(AssetInventory asset) throws Exception;

    @Update("update inventory set checkStatus=#{status} where id=#{id}")
    public Boolean changeInventoryStatus(@Param("id")Integer id,@Param("status")Integer status) throws Exception;


    @Delete("delete from inventory where id=#{id}")
    Boolean deleteInventory(Integer id) throws Exception;

    @Select("SELECT * FROM asset WHERE CONCAT(IFNULL(mingcheng,''),IFNULL(bianma,''),IFNULL(bumen,'')) LIKE '%${value}%'")
    public List<AssetInventory> fuzzyQueryInventory(String condition) throws Exception;
}
