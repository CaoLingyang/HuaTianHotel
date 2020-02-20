package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdministradorEntity {
    private String cname;
    private String phone;
    private Date Checkdate;
    private String Idcard;
    private String address;


}
