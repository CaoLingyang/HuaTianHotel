package com.service.impl;

import com.dao.HotelAnnouncementDao;
import com.entity.HotelAnnouncement;
import com.service.HotelAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/17
 */
@Service
public class HotelAnnouncementServiceImpl implements HotelAnnouncementService {
    @Autowired
    private HotelAnnouncementDao hotelAnnouncementDao;
    @Override
    public List<HotelAnnouncement> getAll(int pageNum, int pageSize) {
        return hotelAnnouncementDao.getAll(pageNum, pageSize);
    }

    @Override
    public void updateById(HotelAnnouncement hotelAnnouncement) {
        hotelAnnouncementDao.updateById(hotelAnnouncement);
    }

    @Override
    public HotelAnnouncement getAllById(Integer id) {
        return hotelAnnouncementDao.getAllById(id);
    }
}
