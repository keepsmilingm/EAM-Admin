package com.ams.dao;

import com.ams.domain.Role;
import com.ams.domain.UserInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IUserDao {




    @Select("select * from users where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "email", column = "email"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "roles",column = "id",javaType = List.class,many = @Many(select = "com.ams.dao.IRoleDao.findRoleByUserId"))
    })
    public UserInfo findByUsername(String username) throws Exception;

    @Select("SELECT * FROM users WHERE CONCAT(IFNULL(username,''),IFNULL(account,''),IFNULL(gender,''),IFNULL(departmentId,''),IFNULL(workplace,'')) LIKE '%${value}%'")
    List<UserInfo> findAll(String condition) throws Exception;

    @Select("SELECT u.id,u.username ,u.gender ,u.status FROM `users_role` r ,users u where r.roleId=3  and u.id=r.userid")
    List<UserInfo> getCheckerList() throws Exception;

    @Insert("insert into users(email,username,password,phoneNum,status) values(#{email},#{username},#{password},#{phoneNum},#{status})")
    Boolean save(UserInfo userInfo) throws Exception;

    @Select("select * from users where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "email", column = "email"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "userDesc", column = "userDesc"),
            @Result(property = "account", column = "account"),
            @Result(property = "birthday", column = "birthday"),
            @Result(property = "gender", column = "gender"),
            @Result(property = "weChat", column = "weChat"),
            @Result(property = "departmentId", column = "departmentId"),
            @Result(property = "roleId", column = "roleId"),
            @Result(property = "accessToken", column = "accessToken"),
            @Result(property = "workPlace", column = "workPlace"),
            @Result(property = "roles",column = "id",javaType = List.class,many = @Many(select = "com.ams.dao.IRoleDao.findRoleByUserId"))
    })
    UserInfo findById(Integer id) throws Exception;
    @Select("select * from users where account=#{account}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "email", column = "email"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "userDesc", column = "userDesc"),
            @Result(property = "account", column = "account"),
            @Result(property = "birthday", column = "birthday"),
            @Result(property = "gender", column = "gender"),
            @Result(property = "weChat", column = "weChat"),
            @Result(property = "departmentId", column = "departmentId"),
            @Result(property = "roleId", column = "roleId"),
            @Result(property = "accessToken", column = "accessToken"),
            @Result(property = "workPlace", column = "workPlace"),
            @Result(property = "roles",column = "id",javaType = List.class,many = @Many(select = "com.ams.dao.IRoleDao.findRoleByUserId"))
    })
    UserInfo findByAccount(String account) throws Exception;
    @Delete("delete from users where id=#{id}")
    Boolean delete(Integer id) throws Exception;


    @Select("select * from users where departmentId=#{departmentId}")
    List<UserInfo> findByDepId(Integer departmentId) throws Exception;


    @Update("update users set email=#{email } ,username=#{username } ,password=#{password } ,phoneNum=#{phoneNum}, status=#{status}, userDesc=#{userDesc } ,account=#{account } ,birthday=#{birthday } ,gender=#{gender } ,weChat=#{weChat } ,departmentId=#{departmentId } ,roleId=#{roleId } ,accessToken=#{accessToken }" +
            " ,workPlace=#{workPlace },pic=#{pic }  where id=#{id}")
    Boolean update(UserInfo userInfo) throws Exception;


    @Insert("insert into users( email ,username ,password ,phoneNum ,status ,userDesc ,account ,birthday ,gender ,weChat ,departmentId ,roleId ,accessToken ,workPlace,pic ) " +
            "values(#{email },#{username },#{password },#{phoneNum}, #{status}, #{userDesc},#{account },#{birthday },#{gender },#{weChat },#{departmentId },#{roleId },#{accessToken },#{workPlace },#{pic })")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    public Boolean add(UserInfo userInfo) throws Exception;

    @Update("update users set email=#{email},username=#{username},password=#{password},phoneNum=#{phoneNum},status=#{status} where id=#{id}")
    Boolean UpdateUser(UserInfo userInfo) throws Exception;

    @Select("select * from role where id not in (select roleId from users_role where userId=#{userId})")
    List<Role> findOtherRoles(Integer userId);

    @Insert("insert into users_role(userId,roleId) values(#{userId},#{roleId})")
    Boolean addRoleToUser(@Param("userId")Integer userId, @Param("roleId") String roleId);
}
