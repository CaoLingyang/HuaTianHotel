package com.controller;

import com.entity.EmployeeEntity;
import com.entity.Room;
import com.github.pagehelper.PageInfo;
import com.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/12
 */
@Controller
@RequestMapping("/room")
public class roomController {
    @Autowired
    private RoomService roomService;
    @RequestMapping("/roomList")
    public String RoomList(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                           @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize,Model model){
        List<Room> employeeEntities= roomService.
                getAll(pageNum, pageSize);
        PageInfo pageInfo=new PageInfo(employeeEntities);
        model.addAttribute("room",pageInfo);
        return "roomList";
    }
}
