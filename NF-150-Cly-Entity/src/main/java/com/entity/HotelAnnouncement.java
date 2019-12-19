package com.entity;

import java.util.Date;

/**
 * @author yangyang
 * @create2019/12/17
 */
public class HotelAnnouncement {
    private Integer id;
    private String headline;
    private String content;
    private String promulgator;
    private String designer;
    private Date releaseTime;

    public HotelAnnouncement() {
    }

    public HotelAnnouncement(Integer id, String headline, String content, String promulgator, String designer, Date releaseTime) {
        this.id = id;
        this.headline = headline;
        this.content = content;
        this.promulgator = promulgator;
        this.designer = designer;
        this.releaseTime = releaseTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPromulgator() {
        return promulgator;
    }

    public void setPromulgator(String promulgator) {
        this.promulgator = promulgator;
    }

    public String getDesigner() {
        return designer;
    }

    public void setDesigner(String designer) {
        this.designer = designer;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    @Override
    public String toString() {
        return "hotelAnnouncement{" +
                "id=" + id +
                ", headline='" + headline + '\'' +
                ", content='" + content + '\'' +
                ", promulgator='" + promulgator + '\'' +
                ", designer='" + designer + '\'' +
                ", releaseTime=" + releaseTime +
                '}';
    }
}
