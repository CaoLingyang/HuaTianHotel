package com.service.impl;

import com.dao.RoomDao;
import com.entity.Room;
import com.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/9
 */
@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    private RoomDao roomDao;

    @Override
    public List<Room> getAll(int pageNum, int pageSize) {
        return roomDao.getAll(pageNum, pageSize);
    }
}
