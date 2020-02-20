package com.dao;

import com.entity.EmployeeEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/5
 */
public interface EmployeeDao {
    int AddEmployeeInfo(EmployeeEntity employeeEntity);
    void deleteById(Integer id);
    List<EmployeeEntity> getAll(@Param("pageNum") int pageNum
            , @Param("pageSize") int pageSize);
    EmployeeEntity getAllById(Integer id);
    int updateById(EmployeeEntity employeeEntity);
    List<EmployeeEntity>getAllByName(String name);
}
