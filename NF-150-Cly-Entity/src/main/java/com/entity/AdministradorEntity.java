package com.entity;

import java.util.Date;

public class AdministradorEntity {
    private String cname;
    private String phone;
    private Date Checkdate;
    private String Idcard;
    private String address;

    public AdministradorEntity(String cname, String phone, Date checkdate, String idcard, String address) {
        this.cname = cname;
        this.phone = phone;
        Checkdate = checkdate;
        Idcard = idcard;
        this.address = address;
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

    public Date getCheckdate() {
        return Checkdate;
    }

    public void setCheckdate(Date checkdate) {
        Checkdate = checkdate;
    }

    public String getIdcard() {
        return Idcard;
    }

    public void setIdcard(String idcard) {
        Idcard = idcard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "AdministradorEntity{" +
                "cname='" + cname + '\'' +
                ", phone='" + phone + '\'' +
                ", Checkdate=" + Checkdate +
                ", Idcard='" + Idcard + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
