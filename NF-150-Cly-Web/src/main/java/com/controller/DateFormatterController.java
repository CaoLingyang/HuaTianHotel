package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;



/**
 * @author yangyang
 * @create2019/12/18
 */
public class DateFormatterController {
    @Autowired(required = false)
    private ConversionService conversionService;

    @InitBinder
    public void DateCast(WebDataBinder webDataBinder){
        DateFormatter dateFormatter=new DateFormatter();
        dateFormatter.setPattern("yyyy-MM-dd");
        webDataBinder.addCustomFormatter(dateFormatter);
    }
}
