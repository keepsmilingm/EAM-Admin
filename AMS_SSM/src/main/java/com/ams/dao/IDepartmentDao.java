package com.ams.dao;

import com.ams.domain.Department;
import org.apache.ibatis.annotations.*;

import java.awt.*;
import java.util.List;
//@Mapper
public interface IDepartmentDao {


    public List<Department> findAll() throws Exception;


//    @Select("SELECT * FROM department where id=#{departmentId}")
    public Department findById(Integer departmentId) throws Exception;

    @Update("update department set parentId=#{parentId } ,name=#{name } ,telePhone=#{telePhone } ,address=#{address}, description=#{description} where id=#{id}")
    public Boolean update(Department department) throws Exception;

    @Insert("insert into department( parentId ,name ,telePhone ,address ,description )values(#{parentId },#{name },#{telePhone },#{address},#{description})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    Boolean add(Department department) throws Exception;

    @Delete("delete from department where id=#{id}")
    Boolean delete(Integer id) throws Exception;


}
