package com.ams.service.impl;

import com.ams.dao.IDepartmentDao;
import com.ams.domain.Department;
import com.ams.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("departmentService")
@Transactional
public class IDepartmentService implements com.ams.service.IDepartmentService {

    @Autowired
    private IDepartmentDao departmentDao;




    @Override
    public List<Department> findAll() throws Exception {
        return departmentDao.findAll();
    }

    @Override
    public Boolean add(Department department) throws Exception {
        return departmentDao.add(department);
    }

    @Override
    public Boolean delete(Integer id) throws Exception {
        return departmentDao.delete(id);

    }

    @Override
    public Boolean update(Department department) throws Exception {
        return departmentDao.update(department);
    }


    @Override
    public Department findById(Integer id) throws Exception {
        return departmentDao.findById(id);
    }
}
