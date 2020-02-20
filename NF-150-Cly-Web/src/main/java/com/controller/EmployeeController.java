package com.controller;

import com.entity.EmployeeEntity;
import com.github.pagehelper.PageInfo;
import com.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author yangyang
 * @create2019/12/12
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;



    @InitBinder
    public void init(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }

    @RequestMapping("/empList")
    public String EmpList(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                          @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model
                          ){
        List<EmployeeEntity> employeeEntities= employeeService.
                getAll(pageNum, pageSize);
        PageInfo pageInfo=new PageInfo(employeeEntities);
        model.addAttribute("list",pageInfo);
        return "empList";
    }

    @GetMapping("/add")
    public String add(){
        return "addEmpInfo";
    }

    @PostMapping("/addEmpInfo")
    public String addEmpInfo(@Valid EmployeeEntity employeeEntity,
                             BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "addEmpInfo";
        }
        employeeService.AddEmployeeInfo(employeeEntity);
        return "index";
    }

    @RequestMapping("/empListTwo")
    public String EmpListTwo(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                          @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize, Model model){
        List<EmployeeEntity> employeeEntities= employeeService.
                getAll(pageNum, pageSize);
        PageInfo pageInfo=new PageInfo(employeeEntities);
        model.addAttribute("emp",pageInfo);
        return "EmployeeUpdate";
    }



    @RequestMapping("/toEmpEdit")
    public String toEmpEdit(@RequestParam(value = "id")Integer id,Model model){
        model.addAttribute("emp",employeeService.getAllById(id));
        return "UpdateEmployee";
    }
    @RequestMapping(value = "empEdit",method = RequestMethod.POST)
    public String EmpEdit(EmployeeEntity employeeEntity){
        employeeService.updateById(employeeEntity);
        return "redirect:EmployeeUpdate";
    }

    @RequestMapping("/empDelete")
    public String EmpDelete(@RequestParam(value = "pageNum" ,required = false,defaultValue = "1") int pageNum,
                            @RequestParam(value = "pageSize",required = false,defaultValue = "2")int pageSize,Model model){
        List<EmployeeEntity>employeeEntities=employeeService.getAll(pageNum, pageSize);

        PageInfo pageInfo=new PageInfo(employeeEntities);
        model.addAttribute("delete",pageInfo);
        return "EmployeeDelete";

    }

    @RequestMapping("/deleteById")
    public String deleteById(Integer id){
        employeeService.delete(id);
        return "EmployeeDelete";
    }

    @RequestMapping("/getAllByName")
    public ModelAndView getAllByName(String name){
        List<EmployeeEntity> employeeEntities =employeeService.getAllByName(name);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("employeeEntities",employeeEntities);
        modelAndView.setViewName("empList");
        return modelAndView;
    }
}
