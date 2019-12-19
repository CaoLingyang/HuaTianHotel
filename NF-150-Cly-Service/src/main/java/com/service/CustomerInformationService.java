package com.service;

import com.entity.CustomerInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/11
 */
public interface CustomerInformationService {
    List<CustomerInformation>getAll(@Param("pageNum") int pageNum
            , @Param("pageSize") int pageSize);
    void deleteById(int id);
    void updateByCustomer(CustomerInformation customerInformation);

    CustomerInformation getAllById(Integer id);

    void saveCustomer(CustomerInformation customerInformation);
}
