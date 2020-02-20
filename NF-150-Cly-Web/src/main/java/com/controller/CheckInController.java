package com.controller;

import com.entity.AdministradorEntity;
import com.service.AdministradorTwoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import javax.validation.Valid;

/**
 * @author yangyang
 * @create2019/12/26
 */
@Controller
public class CheckInController {
    @Autowired
    private AdministradorTwoService administradorTwoService;

    @GetMapping("/administrador")
    public String administradorIndex(){
        return "administradorIndex";
    }
    @GetMapping("/add")
    public String add(){
        return "administradorIndex";
    }

    @PostMapping("/administradorIndex")
    public String addAddInfo(@Valid AdministradorEntity administradorEntity,
                             BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "error";
        }
        administradorTwoService.Toregisteragain(administradorEntity);
        return "administradorIndex";
    }
}
