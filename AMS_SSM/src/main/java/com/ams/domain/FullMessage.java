package com.ams.domain;

import java.util.Date;

public class FullMessage extends Message {

    private Integer mId;
    private Integer messageId;
    private Integer receiverId;
    private Integer receiveDepId;

    private Date checktime;

    private Integer checkStatus;
    private String checkStatusStr;

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
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

    public Integer getReceiveDepId() {
        return receiveDepId;
    }

    public void setReceiveDepId(Integer receiveDepId) {
        this.receiveDepId = receiveDepId;
    }

    public Date getChecktime() {
        return checktime;
    }

    public void setChecktime(Date checktime) {
        this.checktime = checktime;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getCheckStatusStr() {
        return checkStatusStr;
    }

    public void setCheckStatusStr(String checkStatusStr) {
        this.checkStatusStr = checkStatusStr;
    }

    @Override
    public String toString() {
        return super.toString()+"FullMessage{" +
                "mId=" + mId +
                ", messageId=" + messageId +
                ", receiverId=" + receiverId +
                ", receiveDepId=" + receiveDepId +
                ", checktime=" + checktime +
                ", checkStatus=" + checkStatus +
                ", checkStatusStr='" + checkStatusStr + '\'' +
                '}';
    }
}
