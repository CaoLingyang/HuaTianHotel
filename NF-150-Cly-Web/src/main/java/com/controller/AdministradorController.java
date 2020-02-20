package com.controller;


import com.entity.Administrador;
import com.entity.AdministradorEntity;
import com.entity.EmployeeEntity;
import com.service.AdministradorService;
import com.service.AdministradorTwoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Date;

/**
 * @author 曹令洋
 * @create 2019 12.4
 */
@RequestMapping("/userInfo")
@Controller
public class AdministradorController {

    @Autowired
    private AdministradorService administradorService;

    @GetMapping("/register")
    public String register(){
        return "register";
    }


    @PostMapping("/register")
    public String register(@RequestParam(value = "username",required = false) String username,
                         @RequestParam(value = "password",required = false) String password,
                         @RequestParam(value = "repassword",required = false)String repassword,
                         @RequestParam(value = "phone",required = false) String phone, Model model) {
        if (password.equals(repassword)) {
            Administrador administrador=new Administrador(username, password, phone);
            administrador.setUsername(username);
            administrador.setPassword(password);
            administrador.setPhone(phone);
            System.out.println(administrador);
            if (administradorService.register(administrador)>0){
                model.addAttribute("msg","注册成功");
                return "login";
            }else {
                model.addAttribute("msg","注册失败");
                return "register";
            }
        }else {
            model.addAttribute("msg","密码不一致");
            return "register";
        }
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "username",required = false) String username,
                        @RequestParam(value = "password",required = false) String password,
                         Model model) {
        Administrador administrador = administradorService.login(username, password);
        System.out.println(username);
        System.out.println(password);
        System.out.println("++++++++" + administrador);
        if (administrador != null) {
            model.addAttribute("msg", "登录成功");
            return "index";
        } else {
            model.addAttribute("msg", "登录失败");
            return "testLogin";
        }
    }


}
