package com.ams.dao;

import com.ams.domain.Asset;
import com.ams.domain.Orders;
import com.ams.domain.Product;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IAssetDao {

//    模糊查询时 参数LIKE '%${value}%'"  需要这么写
    @Select("SELECT * FROM asset WHERE CONCAT(IFNULL(mingcheng,''),IFNULL(bianma,''),IFNULL(bumen,''),IFNULL(suoshuxianlu,''),IFNULL(cunfangdi,'')) LIKE '%${value}%' and status=0")

    public List<Asset> findAll(String condition) throws Exception;
    @Select("select * from asset where id=#{assetId}")
    public Asset findById(Integer assetId) throws Exception;
    @Select("select * from asset where bianma=#{code}")
    public Asset findByCode(@Param("code") String code) throws Exception;

    @Update("update asset set bianma=#{bianma } ,mingcheng=#{mingcheng } ,guigexinghao=#{guigexinghao } ,price=#{price}, bumenId=#{bumenId}, bumen=#{bumen } ,userpeopleId=#{userpeopleId } ,userpeople=#{userpeople } ,cunfangdi=#{cunfangdi } ,suoshuxianlu=#{suoshuxianlu } ,remark=#{remark } ,type=#{type } ,anzhuangdidian=#{anzhuangdidian }" +
            " ,danwei=#{danwei } ,shuliang=#{shuliang } ,chandi=#{chandi } ,shengchanchangshang=#{shengchanchangshang } ,gongyingshang=#{gongyingshang } ,chuchangriqi=#{chuchangriqi } ,useStatus=#{useStatus } ,status=#{status } ,shejishiyongnianxian=#{shejishiyongnianxian } ,pic=#{pic } ,fushushebeiqingdan=#{fushushebeiqingdan } ,creatTime=#{creatTime } ,creatorUserId=#{creatorUserId } ,qrcode=#{qrcode } ,barcode=#{barcode} where id=#{id}")
    public Boolean update(Asset asset) throws Exception;

    @Update("update asset set status=#{status } where id=#{id}")
    public Boolean changeStatus(@Param("id")Integer id,@Param("status")Integer status) throws Exception;


    @Insert("insert into asset( bianma ,mingcheng ,guigexinghao ,price ,bumenId ,bumen ,userpeopleId ,userpeople ,cunfangdi ,suoshuxianlu ,remark ,type ,anzhuangdidian ,danwei ,shuliang ,chandi ,shengchanchangshang ,gongyingshang ,chuchangriqi ,useStatus ,status ,shejishiyongnianxian ,pic ,fushushebeiqingdan ,creatTime ,creatorUserId ,qrcode ,barcode) " +
            "values(#{bianma },#{mingcheng },#{guigexinghao },#{price}, #{bumenId}, #{bumen},#{userpeopleId },#{userpeople },#{cunfangdi },#{suoshuxianlu },#{remark },#{type },#{anzhuangdidian },#{danwei },#{shuliang },#{chandi },#{shengchanchangshang },#{gongyingshang },#{chuchangriqi },#{useStatus },#{status },#{shejishiyongnianxian },#{pic},#{fushushebeiqingdan },#{creatTime },#{creatorUserId },#{qrcode },#{barcode})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean add(Asset asset) throws Exception;

    @Delete("delete from asset where id=#{id}")
    Boolean delete(String id) throws Exception;

    @Select("SELECT * FROM asset WHERE CONCAT(IFNULL(mingcheng,''),IFNULL(bianma,''),IFNULL(bumen,'')) LIKE '%${value}%' and status=0")
    public List<Asset> fuzzyQuery(String condition) throws Exception;
}
