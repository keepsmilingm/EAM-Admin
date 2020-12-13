package com.ams.service.impl;

import com.ams.dao.IUserDao;
import com.ams.domain.Role;
import com.ams.domain.UserInfo;
import com.ams.service.IUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements IUserService {


    @Autowired
    private IUserDao userDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public Boolean addRoleToUser(Integer userId, String[] roleIds) {

        Boolean flag=false;
        for(String roleId:roleIds){
            if (userDao.addRoleToUser(userId,roleId)){
                flag=true;
            }

        }
        return flag;
    }

    @Override
    public List<Role> findOtherRoles(Integer userId) {
        return userDao.findOtherRoles(userId);
    }

    @Override
    public UserInfo findById(Integer id) throws Exception{

        return  userDao.findById(id);
    }

    @Override
    public UserInfo findByAccount(String account) throws Exception {
        return userDao.findByAccount(account);
    }


    @Override
    public List<UserInfo> findByDepId(Integer departmentId) throws Exception{

        return  userDao.findByDepId(departmentId);
    }

    @Override
    public List<UserInfo> getCheckerList() throws Exception {
        return userDao.getCheckerList();
    }

    @Override
    public Boolean save(UserInfo userInfo) throws Exception {
        //对密码进行加密处理
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));

        return userDao.save(userInfo);
    }

    @Override
    public Boolean UpdateUser(UserInfo userInfo) throws Exception {
        //对密码进行加密处理
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));

        return userDao.UpdateUser(userInfo);
    }

    @Override
    public UserInfo findByName(String name) throws Exception {
        return  userDao.findByUsername(name);
    }

    @Override
    public List<UserInfo> findAll(int page, int size,String condition,String orderbys) throws Exception {
        PageHelper.startPage(page, size,orderbys);
        return userDao.findAll(condition);
    }

    @Override
    public UserDetails loadUserByUsername(String account) throws UsernameNotFoundException {
        UserInfo userInfo = null;
        try {
            userInfo = userDao.findByAccount(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        User user = new User(userInfo.getUsername(), userInfo.getPassword(),
                true, true, true,
                true, getAuthority(userInfo.getRoles()));
        return user;
    }
    public List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {

        List<SimpleGrantedAuthority> list = new ArrayList<>();
        for (Role role : roles) {
            System.out.println(role);
            list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
        }
        return list;
    }

    @Override
    public Boolean delete(Integer id) throws Exception {
        return  userDao.delete(id);
    }

    @Override
    public Boolean update(UserInfo user) throws Exception {
//        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        return userDao.update(user);
    }

    @Override
    public Boolean add(UserInfo user) throws Exception {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        return userDao.add(user);
    }

    //用于移动端接口

}
