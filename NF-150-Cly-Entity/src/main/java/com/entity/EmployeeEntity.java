package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/5
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmployeeEntity {
    private Integer id;
    private String name;
    private String gender;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private String idNumber;
    private String maritalStatus;
    private String nation;
    private String nativePlace;
    private String politicsStatus;
    private String email;
    private String phone;
    private String address;
    private String department;
    private String jodlevelid;
    private String position;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String positionDate;
    private String school;
    private Integer deptid;


}
