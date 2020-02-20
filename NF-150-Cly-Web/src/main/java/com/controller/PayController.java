package com.controller;

import com.entity.Pay;
import com.github.pagehelper.PageInfo;
import com.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

/**
 * @author yangyang
 * @create2019/12/20
 */
@Controller
@RequestMapping("/pay")
public class PayController {
    @Autowired
    private PayService payService;

    @RequestMapping("/payList")
    public String RoomList(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                           @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model){
        List<Pay> pays= payService.
                getAllById(pageNum, pageSize);
        PageInfo pageInfo=new PageInfo(pays);
        model.addAttribute("list",pageInfo);
        return "payList";
    }

    @GetMapping("/pay")
    public String add(){
        return "payMoney";
    }

    @PostMapping("/addPayInfo")
    public String addPayInfo(@Valid Pay pay,
                             BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "payMoney";
        }
        payService.PayMoney(pay);
        return "administradorIndex";
    }
}
