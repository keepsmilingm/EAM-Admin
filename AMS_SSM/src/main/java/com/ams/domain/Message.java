package com.ams.domain;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Message {

    private Integer id;
    private String des;
    private String detail;
    private Integer senderId;
    private String sender;
    private Integer type; //消息类型
    private String typeStr; //消息类型
    private Date sendTime;
    private String sendTimeStr;
    private String pic; //消息类型
    private MessageReceiver receivers;

    public String getSendTimeStr() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");
        this.sendTimeStr = sdf.format(sendTime);
        return sendTimeStr;
    }

    public void setSendTimeStr(String sendTimeStr) {
        this.sendTimeStr = sendTimeStr;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public MessageReceiver getReceivers() {
        return receivers;
    }

    public void setReceivers(MessageReceiver receivers) {
        this.receivers = receivers;
    }

    public String getTypeStr() {
        if (type == 0) {
            typeStr = "一般消息";
        } else if (type == 1) {
            typeStr = "紧急消息";
        }else if (type == 2){
            typeStr = "通知消息";
        }else{
            typeStr = "一般消息";
        }
        return typeStr;
    }

    public void setTypeStr(String typeStr) {

        this.typeStr=typeStr;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Integer getSenderId() {
        return senderId;
    }

    public void setSenderId(Integer senderId) {
        this.senderId = senderId;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime =new java.sql.Date(new java.util.Date().getTime());
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", des='" + des + '\'' +
                ", detail='" + detail + '\'' +
                ", senderId=" + senderId +
                ", sender='" + sender + '\'' +
                ", type=" + type +
                ", typeStr='" + typeStr + '\'' +
                ", sendTime=" + sendTime +
                ", pic='" + pic + '\'' +
                ", receivers=" + receivers +
                '}';
    }
}
