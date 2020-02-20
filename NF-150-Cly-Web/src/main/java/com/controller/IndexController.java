package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author yangyang
 * @create2019/12/18
 */
@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/administradorIndex")
    public String AdministradorIndex(){
        return "administradorIndex";
    }
}
