package com.service;

import com.entity.HotelAnnouncement;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/17
 */
public interface HotelAnnouncementService {
    List<HotelAnnouncement>getAll(@Param("pageNum") int pageNum,
                                  @Param("pageSize") int pageSize);
    void updateById(HotelAnnouncement hotelAnnouncement);
    HotelAnnouncement getAllById(Integer id);
}
