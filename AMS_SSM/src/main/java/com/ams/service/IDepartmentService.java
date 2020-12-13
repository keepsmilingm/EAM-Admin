package com.ams.service;

import com.ams.domain.Department;

import javax.xml.bind.DataBindingException;
import java.util.List;

public interface IDepartmentService {
    public List<Department> findAll()throws Exception;
    Boolean add(Department department) throws Exception;
    Boolean delete(Integer id) throws Exception;
    Boolean update(Department department)throws Exception;
    Department findById(Integer id) throws Exception;

}
