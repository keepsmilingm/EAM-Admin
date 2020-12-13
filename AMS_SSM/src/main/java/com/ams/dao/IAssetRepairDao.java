package com.ams.dao;
import com.ams.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IAssetRepairDao {

//    模糊查询时 参数LIKE '%${value}%'"  需要这么写
    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM repair r, asset a where r.senderId=#{senderId}  and r.assetId=a.id and r.checkStatus=#{checkStatus}")
    public List<AssetRepair> findAllSend(@Param("senderId")Integer senderId,@Param("checkStatus")Integer checkStatus) throws Exception;

    @Select("SELECT a.mingcheng ,a.bianma,r.id,r.money,r.type,r.checkStatus,r.creatTime FROM repair r, asset a where  r.checkerId=#{checkerId} and r.assetId=a.id and r.checkStatus=#{checkStatus}")
    public List<AssetRepair> findAllReceive(@Param("checkerId")Integer checkerId,@Param("checkStatus")Integer checkStatus) throws Exception;

    @Select("SELECT count(*) FROM repair r where  r.checkerId=#{checkerId}  and (r.checkStatus=0 or r.checkStatus=3)")
    public Integer findRepairCount(@Param("checkerId")Integer checkerId) throws Exception;

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
            @Result(property = "pic", column = "pic"),
            @Result(property = "asset", column = "assetId", javaType = Asset.class, one = @One(select = "com.ams.dao.IAssetDao.findById")),
            @Result(property = "userInfo",column = "senderId",javaType = UserInfo.class,one = @One(select = "com.ams.dao.IUserDao.findById"))
    })
    public AssetRepair findByRepairId(Integer id) throws Exception;

    @Update("update repair set checkerId=#{checkerId} ,reason=#{reason},money=#{money},type=#{type},pic=#{pic} where id=#{id}")
    public Boolean updateRepair(AssetRepair asset) throws Exception;


    @Insert("insert into repair( senderId ,assetId ,checkerId ,reason,money,type,pic )values(#{senderId },#{assetId },#{checkerId},#{reason},#{money},#{type},#{pic})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean addRepair(AssetRepair asset) throws Exception;

    @Update("update repair set checkStatus=#{status} where id=#{id}")
    public Boolean changeRepairStatus(@Param("id")Integer id,@Param("status")Integer status) throws Exception;


    @Delete("delete from repair where id=#{id}")
    Boolean deleteRepair(Integer id) throws Exception;

    @Select("SELECT * FROM asset WHERE CONCAT(IFNULL(mingcheng,''),IFNULL(bianma,''),IFNULL(bumen,'')) LIKE '%${value}%'")
    public List<AssetRepair> fuzzyQueryRepair(String condition) throws Exception;
}
