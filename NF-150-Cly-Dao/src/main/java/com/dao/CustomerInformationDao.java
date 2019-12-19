package com.dao;

import com.entity.CustomerInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/11
 */
public interface CustomerInformationDao {
   List<CustomerInformation>getAll(@Param("pageNum") int pageNum
           , @Param("pageSize") int pageSize);
   void deleteById(int id);
   int updateByCustomer(CustomerInformation customerInformation);
   CustomerInformation getAllById(Integer id);
   void saveCustomer(CustomerInformation customerInformation);
}
