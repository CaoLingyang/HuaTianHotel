package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/17
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HotelAnnouncement {
    private Integer id;
    private String headline;
    private String content;
    private String promulgator;
    private String designer;
    private Date releaseTime;

}
