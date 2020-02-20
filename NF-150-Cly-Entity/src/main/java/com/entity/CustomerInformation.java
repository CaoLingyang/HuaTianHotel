package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/11
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerInformation {
    private Integer id;
    private String cname;
    private String phone;
    private String address;
    private String idCard;
    private Date checkDate;
    private Integer roomId;


}
