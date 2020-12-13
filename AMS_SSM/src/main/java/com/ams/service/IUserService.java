package com.ams.service;

import com.ams.domain.Role;
import com.ams.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {

    public List<UserInfo> findAll(int page,int size,String condition,String orderbys)throws Exception;
    public List<UserInfo> findByDepId(Integer departmentId)throws Exception;
    List<UserInfo> getCheckerList() throws Exception;
    Boolean save(UserInfo userInfo) throws Exception;
    Boolean UpdateUser(UserInfo userInfo) throws Exception;

    UserInfo findById(Integer id) throws Exception;
    UserInfo findByAccount(String account) throws Exception;
    UserInfo findByName(String name) throws Exception;


    List<Role> findOtherRoles(Integer userId) throws Exception;

    Boolean addRoleToUser(Integer userId, String[] roleIds);
    public Boolean delete(Integer id) throws Exception;
    public Boolean update(UserInfo UserInfo) throws Exception;
    public Boolean add(UserInfo UserInfo) throws Exception;
    
}
