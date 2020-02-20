package com.service.impl;

import com.dao.EmployeeDao;
import com.entity.EmployeeEntity;
import com.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/5
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public int AddEmployeeInfo(EmployeeEntity employeeEntity) {
        return employeeDao.AddEmployeeInfo(employeeEntity);
    }

    @Override
    public void delete(Integer id) {
       employeeDao.deleteById(id);
    }

    @Override
    public List<EmployeeEntity> getAll(int pageNum, int pageSize){
        return employeeDao.getAll(pageNum, pageSize);
    }

    @Override
    public void updateById(EmployeeEntity employeeEntity) {
        employeeDao.updateById(employeeEntity);
    }

    @Override
    public EmployeeEntity getAllById(Integer id) {
       return employeeDao.getAllById(id);
    }

    @Override
    public List<EmployeeEntity> getAllByName(String name) {
        return employeeDao.getAllByName(name);
    }
}
