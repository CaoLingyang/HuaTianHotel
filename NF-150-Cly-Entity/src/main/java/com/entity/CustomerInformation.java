package com.entity;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/11
 */
public class CustomerInformation {
    private Integer id;
    private String cname;
    private String phone;
    private String address;
    private String idCard;
    private Date checkDate;
    private Integer roomId;

    public CustomerInformation(){

    }

    public CustomerInformation(Integer id, String cname, String phone, String address, String idCard, Date checkDate, Integer roomId) {
        this.id = id;
        this.cname = cname;
        this.phone = phone;
        this.address = address;
        this.idCard = idCard;
        this.checkDate = checkDate;
        this.roomId = roomId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "CustomerInformation{" +
                "id=" + id +
                ", cname='" + cname + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", idCard='" + idCard + '\'' +
                ", checkDate=" + checkDate +
                ", roomId=" + roomId +
                '}';
    }
}
