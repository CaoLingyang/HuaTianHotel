package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/20
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pay {
    private Integer id;
    private Integer roomId;
    private Date payDate;
    private Float money;



}
