package com.ams.domain;

import com.ams.utils.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;


//与数据库中users对应
public class UserInfo {
    private Integer id;
    private String email;
    private String username;
    private String password;
    private String phoneNum;
    private Integer status;
    private String statusStr;
    private String userDesc;
    private String account;

    private Date birthday;
    private String birthdayFormat;
    private Integer gender;
    private String genderStr;
    private String weChat;
    private Integer departmentId;
    private Integer roleId;
    private String accessToken;
    private String workPlace;
    private String pic;
    private List<Role> roles;

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getBirthdayFormat() {
        if(birthday!=null){
            birthdayFormat= DateUtils.date2String(birthday,"yyyy-MM-dd HH:mm");
        }
        return birthdayFormat;
    }

    public void setBirthdayFormat(String birthdayFormat) {
        this.birthdayFormat = birthdayFormat;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getUserDesc() {
        return userDesc;
    }

    public void setUserDesc(String userDesc) {
        this.userDesc = userDesc;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getWorkPlace() {
        return workPlace;
    }

    public void setWorkPlace(String workPlace) {
        this.workPlace = workPlace;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public String getGenderStr() {
        if (gender!=null){
            switch (gender){
                case 0: genderStr="男";break;
                case 1: genderStr="女";break;
                default:genderStr="";break;
            }
        }else{
            genderStr="";
        }

        return genderStr;
    }

    public void setGenderStr(String genderStr) {

        this.genderStr=genderStr;
    }




    public String getStatusStr() {
        //状态0 未开启 1 开启
        if(status!=null){
            if (status == 0) {
                statusStr = "未开启";
            } else if (status == 1) {
                statusStr = "开启";
            }else {
                statusStr = "";
            }
        }else{
            statusStr = "";
        }
        return statusStr;
    }
    public void setStatusStr(String statusStr) {
        this.statusStr=statusStr;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", status=" + status +
                ", statusStr='" + statusStr + '\'' +
                ", userDesc='" + userDesc + '\'' +
                ", account='" + account + '\'' +
                ", birthday=" + birthday +
                ", gender=" + gender +
                ", genderStr='" + genderStr + '\'' +
                ", weChat='" + weChat + '\'' +
                ", departmentId=" + departmentId +
                ", roleId=" + roleId +
                ", accessToken='" + accessToken + '\'' +
                ", workPlace='" + workPlace + '\'' +
                ", roles=" + roles +
                '}';
    }
}
