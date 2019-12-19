package com.dao;

import com.entity.HotelAnnouncement;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/17
 */
public interface HotelAnnouncementDao {
    List<HotelAnnouncement> getAll(@Param("pageNum") int pageNum,
                                   @Param("pageSize") int pageSize);

    HotelAnnouncement getAllById(Integer id);
    int updateById(HotelAnnouncement hotelAnnouncement);
}
