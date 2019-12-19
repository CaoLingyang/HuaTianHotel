package com.service;

import com.entity.EmployeeEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/5
 */
public interface EmployeeService {

    int AddEmployeeInfo(EmployeeEntity employeeEntity);
    void delete(Integer id);
    List<EmployeeEntity> getAll(@Param("pageNum") int pageNum
            , @Param("pageSize") int pageSize);
    void updateById(EmployeeEntity employeeEntity);
    EmployeeEntity getAllById(Integer id);
}
