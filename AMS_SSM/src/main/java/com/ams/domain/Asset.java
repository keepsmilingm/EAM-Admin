package com.ams.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Asset {

    private Integer id;
    private String bianma;
    private String mingcheng;
    private Double price;
    private Integer bumenId;
    private String bumen;
    private Integer userpeopleId;
    private String userpeople;
    private String cunfangdi;
    private String suoshuxianlu;
    private String remark;
    private Integer type;
    private String guigexinghao;
    private String anzhuangdidian;
    private String danwei;
    private Integer shuliang;
    private String chandi;
    private String shengchanchangshang;
    private String gongyingshang;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date chuchangriqi;
    private String chuchangriqiFormat;
    private Integer useStatus;
    private Integer status;
    private String statusStr;
    private Integer shejishiyongnianxian;
    private String fushushebeiqingdan;
    private String pic;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date creatTime;
    private String creatTimeFormat;
    private Integer creatorUserId;
    private String qrcode;
    private String barcode;

    public String getStatusStr() {
        if (status!=null){
            switch (status){
                case 0: statusStr="正常";break;
                case 1: statusStr="维修";break;
                case 2: statusStr="报废";break;
                case 3: statusStr="移交";break;
                case 4: statusStr="盘点";break;
            }
        }


        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    public String getChuchangriqiFormat() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        this.chuchangriqiFormat = sdf.format(chuchangriqi);
        return chuchangriqiFormat;
    }

    public void setChuchangriqiFormat(String chuchangriqiFormat) {
        this.chuchangriqiFormat = chuchangriqiFormat;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getBianma() {
        return bianma;
    }

    public Integer getBumenId() {
        return bumenId;
    }

    public void setBumenId(Integer bumenId) {
        this.bumenId = bumenId;
    }

    public String getBumen() {
        return bumen;
    }

    public void setBumen(String bumen) {
        this.bumen = bumen;
    }

    public void setBianma(String bianma) {
        this.bianma = bianma;
    }


    public String getMingcheng() {
        return mingcheng;
    }

    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }


    public String getGuigexinghao() {
        return guigexinghao;
    }

    public void setGuigexinghao(String guigexinghao) {
        this.guigexinghao = guigexinghao;
    }



    public Integer getUserpeopleId() {
        return userpeopleId;
    }

    public void setUserpeopleId(Integer userpeopleId) {
        this.userpeopleId = userpeopleId;
    }

    public String getUserpeople() {
        return userpeople;
    }

    public void setUserpeople(String userpeople) {
        this.userpeople = userpeople;
    }

    public String getCunfangdi() {
        return cunfangdi;
    }

    public void setCunfangdi(String cunfangdi) {
        this.cunfangdi = cunfangdi;
    }

    public String getSuoshuxianlu() {
        return suoshuxianlu;
    }

    public void setSuoshuxianlu(String suoshuxianlu) {
        this.suoshuxianlu = suoshuxianlu;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getAnzhuangdidian() {
        return anzhuangdidian;
    }

    public void setAnzhuangdidian(String anzhuangdidian) {
        this.anzhuangdidian = anzhuangdidian;
    }

    public String getDanwei() {
        return danwei;
    }

    public void setDanwei(String danwei) {
        this.danwei = danwei;
    }

    public Integer getShuliang() {
        return shuliang;
    }

    public void setShuliang(Integer shuliang) {
        this.shuliang = shuliang;
    }

    public String getChandi() {
        return chandi;
    }

    public void setChandi(String chandi) {
        this.chandi = chandi;
    }

    public String getShengchanchangshang() {
        return shengchanchangshang;
    }

    public void setShengchanchangshang(String shengchanchangshang) {
        this.shengchanchangshang = shengchanchangshang;
    }

    public String getGongyingshang() {
        return gongyingshang;
    }

    public void setGongyingshang(String gongyingshang) {
        this.gongyingshang = gongyingshang;
    }

    public Date getChuchangriqi() {
        return chuchangriqi;
    }

    public void setChuchangriqi(Date chuchangriqi) {
        this.chuchangriqi = chuchangriqi;
    }

    public Integer getUseStatus() {
        return useStatus;
    }

    public void setUseStatus(Integer useStatus) {
        this.useStatus = useStatus;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getShejishiyongnianxian() {
        return shejishiyongnianxian;
    }

    public void setShejishiyongnianxian(Integer shejishiyongnianxian) {
        this.shejishiyongnianxian = shejishiyongnianxian;
    }

    public String getFushushebeiqingdan() {
        return fushushebeiqingdan;
    }

    public void setFushushebeiqingdan(String fushushebeiqingdan) {
        this.fushushebeiqingdan = fushushebeiqingdan;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date createTime) {
        this.creatTime = createTime;
    }

    public Integer getCreatorUserId() {
        return creatorUserId;
    }

    public void setCreatorUserId(Integer creatorId) {
        this.creatorUserId = creatorId;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getCreatTimeFormat() {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        this.creatTimeFormat = sdf.format(creatTime);
        return creatTimeFormat;
    }

    public void setCreatTimeFormat(String creatTimeFormat) {
        this.creatTimeFormat = creatTimeFormat;
    }

    @Override
    public String toString() {
        return "Asset{" +
                "id=" + id +
                ", bianma='" + bianma + '\'' +
                ", mingcheng='" + mingcheng + '\'' +
                ", price=" + price +
                ", bumenId=" + bumenId +
                ", bumen='" + bumen + '\'' +
                ", userpeopleId=" + userpeopleId +
                ", userpeople='" + userpeople + '\'' +
                ", cunfangdi='" + cunfangdi + '\'' +
                ", suoshuxianlu='" + suoshuxianlu + '\'' +
                ", remark='" + remark + '\'' +
                ", type=" + type +
                ", guigexinghao='" + guigexinghao + '\'' +
                ", anzhuangdidian='" + anzhuangdidian + '\'' +
                ", danwei='" + danwei + '\'' +
                ", shuliang=" + shuliang +
                ", chandi='" + chandi + '\'' +
                ", shengchanchangshang='" + shengchanchangshang + '\'' +
                ", gongyingshang='" + gongyingshang + '\'' +
                ", chuchangriqi=" + chuchangriqi +
                ", useStatus=" + useStatus +
                ", status=" + status +
                ", shejishiyongnianxian=" + shejishiyongnianxian +
                ", fushushebeiqingdan='" + fushushebeiqingdan + '\'' +
                ", pic='" + pic + '\'' +
                ", creatTime=" + creatTime +
                ", creatTimeFormat='" + creatTimeFormat + '\'' +
                ", creatorUserId=" + creatorUserId +
                ", qrcode='" + qrcode + '\'' +
                ", barcode='" + barcode + '\'' +
                '}';
    }
}
