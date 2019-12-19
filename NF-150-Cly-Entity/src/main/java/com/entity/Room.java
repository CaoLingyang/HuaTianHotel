package com.entity;

/**
 * @author yangyang
 * @create2019/12/9
 */
public class Room {
    private Integer roomid;
    private String type;
    private Integer money;
    private String remark;
    private Integer restroom;

    public Room() {
    }

    public Room(Integer roomid, String type, Integer money, String remark, Integer restroom) {
        this.roomid = roomid;
        this.type = type;
        this.money = money;
        this.remark = remark;
        this.restroom = restroom;
    }

    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getRestroom() {
        return restroom;
    }

    public void setRestroom(Integer restroom) {
        this.restroom = restroom;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomid=" + roomid +
                ", type='" + type + '\'' +
                ", money=" + money +
                ", remark='" + remark + '\'' +
                ", restroom=" + restroom +
                '}';
    }
}
