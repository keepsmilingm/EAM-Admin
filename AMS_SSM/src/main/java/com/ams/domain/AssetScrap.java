package com.ams.domain;

import com.ams.utils.DateUtils;

import java.util.Date;

public class AssetScrap {

    private Integer id;
    private Integer senderId;
    private Integer assetId;
    private Integer checkerId;
    private Integer money;
    private Integer checkStatus;
    private String checkStatusStr;
    private String pic;
    private Integer type;
    private String reason;
    private String mingcheng;
    private String bianma;
    private Date creatTime;
    private String creatTimeStr;
    private UserInfo userInfo;
    private Asset asset;

    public String getCheckStatusStr() {
        if(checkStatus==0){
            checkStatusStr="待审核";
        }else if(checkStatus==1){
            checkStatusStr="一级审核通过";
        }else if(checkStatus==2){
            checkStatusStr="驳回";

        }else if(checkStatus==3){
            checkStatusStr="驳回重提交";
        }else if(checkStatus==4){
            checkStatusStr="完成";
        }
        return checkStatusStr;
    }

    public void setCheckStatusStr(String checkStatusStr) {
        this.checkStatusStr = checkStatusStr;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public Asset getAsset() {
        return asset;
    }

    public void setAsset(Asset asset) {
        this.asset = asset;
    }

    public String getMingcheng() {
        return mingcheng;
    }

    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng;
    }

    public String getBianma() {
        return bianma;
    }

    public void setBianma(String bianma) {
        this.bianma = bianma;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSenderId() {
        return senderId;
    }

    public void setSenderId(Integer senderId) {
        this.senderId = senderId;
    }

    public Integer getAssetId() {
        return assetId;
    }

    public void setAssetId(Integer assetId) {
        this.assetId = assetId;
    }

    public Integer getCheckerId() {
        return checkerId;
    }

    public void setCheckerId(Integer checkerId) {
        this.checkerId = checkerId;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    public String getCreatTimeStr() {
        if(creatTime!=null){
            creatTimeStr= DateUtils.date2String(creatTime,"yyyy-MM-dd HH:mm");
        }
        return creatTimeStr;
    }

    public void setCreatTimeStr(String creatTimeStr) {
        this.creatTimeStr = creatTimeStr;
    }

    @Override
    public String toString() {
        return "AssetRepair{" +
                "id=" + id +
                ", senderId=" + senderId +
                ", assetId=" + assetId +
                ", checkerId=" + checkerId +
                ", money=" + money +
                ", checkStatus=" + checkStatus +
                ", pic='" + pic + '\'' +
                ", type=" + type +
                ", reason='" + reason + '\'' +
                ", mingcheng='" + mingcheng + '\'' +
                ", bianma='" + bianma + '\'' +
                ", creatTime=" + creatTime +
                ", creatTimeStr='" + creatTimeStr + '\'' +
                ", userInfo=" + userInfo +
                ", asset=" + asset +
                '}';
    }
}
