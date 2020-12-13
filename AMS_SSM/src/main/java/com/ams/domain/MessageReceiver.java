package com.ams.domain;

import java.util.Date;

public class MessageReceiver {
    private Integer mId;
    private Integer messageId;
    private Integer receiverId;
    private Integer receiveDepId;
    private Date checkTime;
    private Integer checkStatus;
    private String checkStatusStr;
    private Message message;

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public String getCheckStatusStr() {
        if (checkStatus == 0) {
            checkStatusStr = "未读";
        } else if (checkStatus == 1) {
            checkStatusStr = "已读";
        } else if (checkStatus == 2) {
            checkStatusStr = "收藏";
        }else if (checkStatus == 3){
            checkStatusStr = "回收";
        }else{
            checkStatusStr = "未读";
        }
        return checkStatusStr;
    }

    public void setCheckStatusStr(String checkStatusStr) {

        this.checkStatusStr=checkStatusStr;
    }

    public Integer getMId() {
        return mId;
    }

    public void setMId(Integer mId) {
        this.mId = mId;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Integer getReceiveDepId() {
        return receiveDepId;
    }

    public void setReceiveDepId(Integer receiveDepId) {
        this.receiveDepId = receiveDepId;
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(Integer receiverId) {
        this.receiverId = receiverId;
    }



    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = new Date();
    }

    @Override
    public String toString() {
        return "MessageReceiver{" +
                "mId=" + mId +
                ", messageId=" + messageId +
                ", receiverId=" + receiverId +
                ", receiveDepId=" + receiveDepId +
                ", checktime=" + checkTime +
                ", checkStatus=" + checkStatus +
                ", checkStatusStr='" + checkStatusStr + '\'' +
                '}';
    }
}
