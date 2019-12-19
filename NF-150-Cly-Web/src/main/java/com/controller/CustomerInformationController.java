package com.controller;

import com.entity.CustomerInformation;
import com.github.pagehelper.PageInfo;
import com.service.CustomerInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/11
 */
@Controller
@RequestMapping("/customer")
public class CustomerInformationController {
    @Autowired
    private CustomerInformationService customerInformationService;


    @RequestMapping("/CustomerList")
    public String CustomerList(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                               @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model){
        List<CustomerInformation>customerInformations=customerInformationService
                .getAll(pageNum,pageSize);

        PageInfo pageInfo=new PageInfo(customerInformations);
        model.addAttribute("list",pageInfo);
        return "CustomerList";
    }

    @RequestMapping("/CustomerListTwo")
    public String CustomerListTwo(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                               @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model){
        List<CustomerInformation>customerInformations=customerInformationService
                .getAll(pageNum,pageSize);

        PageInfo pageInfo=new PageInfo(customerInformations);
        model.addAttribute("list",pageInfo);
        return "CustomerDelete";
    }

    @RequestMapping("/deleteBycustomer")
    public String deleteBycustomer(int id){
        customerInformationService.deleteById(id);
        return "CustomerDelete";
    }

    @RequestMapping("/deleteBycustomerSelect")
    public String deleteBycustomerSelect(RedirectAttributes redirectAttributes){
        redirectAttributes.addAttribute("id","deleteBycustomer id");
        return "redirect:deleteBycustomer";
    }

    @RequestMapping("/CustomerListThree")
    public String CustomerListThree(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                                  @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model){
        List<CustomerInformation>customerInformations=customerInformationService
                .getAll(pageNum,pageSize);

        PageInfo pageInfo=new PageInfo(customerInformations);
        model.addAttribute("customer",pageInfo);
        return "CustomerUpdate";
    }
    @RequestMapping("/toUpdateCustomer")
    public String toUpdateCustomer(@RequestParam(value = "id")Integer id,Model model){
        model.addAttribute("customer",customerInformationService.getAllById(id));
        return "UpdateCustomer";
    }
    @RequestMapping(value = "updateCustomer",method = RequestMethod.POST)
    public String UpdateCustomer(CustomerInformation customerInformation){
        customerInformationService.updateByCustomer(customerInformation);
        return "redirect:CustomerUpdate";
    }


}
