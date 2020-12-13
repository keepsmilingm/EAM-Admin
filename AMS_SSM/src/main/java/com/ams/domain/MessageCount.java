package com.ams.domain;

public class MessageCount {

    private Integer mId;
    private Integer type;
    private Integer typeNum;
    private String typeStr;
    private Integer checkStatus;
    private Integer checkStatusNum;
    private Integer messageId;
    private Integer receiverId;
    private String checkStatusStr;
    private String des;
    private String sender;
    private String pic;

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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getTypeNum() {
        return typeNum;
    }

    public void setTypeNum(Integer typeNum) {
        this.typeNum = typeNum;
    }

    public String getTypeStr() {
        return typeStr;
    }

    public void setTypeStr(String typeStr) {
        this.typeStr = typeStr;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Integer getCheckStatusNum() {
        return checkStatusNum;
    }

    public void setCheckStatusNum(Integer checkStatusNum) {
        this.checkStatusNum = checkStatusNum;
    }

    public String getCheckStatusStr() {
        return checkStatusStr;
    }

    public void setCheckStatusStr(String checkStatusStr) {
        this.checkStatusStr = checkStatusStr;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    @Override
    public String toString() {
        return "MessageCount{" +
                "mId=" + mId +
                ", type=" + type +
                ", typeNum=" + typeNum +
                ", typeStr='" + typeStr + '\'' +
                ", checkStatus=" + checkStatus +
                ", checkStatusNum=" + checkStatusNum +
                ", messageId=" + messageId +
                ", receiverId=" + receiverId +
                ", checkStatusStr='" + checkStatusStr + '\'' +
                ", des='" + des + '\'' +
                ", sender='" + sender + '\'' +
                ", pic='" + pic + '\'' +
                '}';
    }
}
