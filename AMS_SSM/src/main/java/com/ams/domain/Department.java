package com.ams.domain;


import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

public class Department {

//    fastjson 进行数据封装时会默认按key值排序，1.1.42版本以上可使用@JSONField(ordinal=1)自定义排序规则
    @JSONField(ordinal=1)
    private Integer id;
    @JSONField(ordinal=2)
    private String name;
    @JSONField(ordinal=3)
    private String telePhone;
    @JSONField(ordinal=4)
    private String address;
    @JSONField(ordinal=5)
    private String description;
    @JSONField(ordinal=6)
    private Integer parentId;
    @JSONField(ordinal=7)
    private List<Department> childDepartment;
    @JSONField(ordinal = 8)
    private List<UserInfo> employees;


    public List<UserInfo> getEmployees() {
        return employees;
    }

    public void setEmployees(List<UserInfo> employees) {
        this.employees = employees;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelePhone() {
        return telePhone;
    }

    public void setTelePhone(String telePhone) {
        this.telePhone = telePhone;
    }



    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public List<Department> getChildDepartment() {
        return childDepartment;
    }

    public void setChildDepartment(List<Department> childDepartment) {
        this.childDepartment = childDepartment;
    }


}
