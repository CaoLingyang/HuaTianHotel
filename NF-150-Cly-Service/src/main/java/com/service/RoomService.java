package com.service;

import com.entity.Room;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/9
 */
public interface RoomService {
    List<Room>getAll(@RequestParam("pageNum")int pageNum,
                     @RequestParam("pageSize")int pageSize);

}
