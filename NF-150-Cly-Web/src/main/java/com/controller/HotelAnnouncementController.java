package com.controller;

import com.entity.HotelAnnouncement;
import com.github.pagehelper.PageInfo;
import com.service.HotelAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/17
 */
@Controller

@RequestMapping("/index")
public class HotelAnnouncementController {
    @Autowired
    private HotelAnnouncementService hotelAnnouncementService;


    @RequestMapping("/acc")
    public String getAll(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                         @RequestParam(value = "pageSize",required = false,defaultValue = "1")int pageSize, Model model){
        List<HotelAnnouncement>hotelAnnouncements=hotelAnnouncementService.getAll(pageNum, pageSize);
        PageInfo pageInfo=new PageInfo(hotelAnnouncements);
        model.addAttribute("announcements",pageInfo);
        return  "index";
    }

    @RequestMapping("/toUpdateById")
    public String toUpdateById(@RequestParam(value = "id")Integer id,Model model){
        model.addAttribute("update",hotelAnnouncementService.getAllById(id));
        return "updateInfo";
    }
    @RequestMapping(value = "updateById",method = RequestMethod.POST)
    public String UpdateById(HotelAnnouncement hotelAnnouncement){
        hotelAnnouncementService.updateById(hotelAnnouncement);
        return "redirect:index";
    }
}
