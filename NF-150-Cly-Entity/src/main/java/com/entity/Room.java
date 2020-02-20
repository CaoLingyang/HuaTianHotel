package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author yangyang
 * @create2019/12/9
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Room {
    private Integer roomid;
    private String type;
    private Integer money;
    private String remark;
    private Integer restroom;


}
