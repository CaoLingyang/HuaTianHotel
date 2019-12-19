package com.service.impl;

import com.dao.CustomerInformationDao;
import com.entity.CustomerInformation;
import com.service.CustomerInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/11
 */
@Service
public class CustomerInformationServiceImpl implements CustomerInformationService {
    @Autowired
    private CustomerInformationDao customerInformationDao;
    @Override
    public List<CustomerInformation> getAll(int pageNum, int pageSize) {
        return customerInformationDao.getAll(pageNum, pageSize);
    }

    @Override
    public void deleteById(int id) {
         customerInformationDao.deleteById(id);
    }

    @Override
    public void updateByCustomer(CustomerInformation customerInformation) {
        customerInformationDao.updateByCustomer(customerInformation);
    }

    @Override
    public CustomerInformation getAllById(Integer id) {
        return customerInformationDao.getAllById(id);
    }

    @Override
    public void saveCustomer(CustomerInformation customerInformation) {
        customerInformationDao.saveCustomer(customerInformation);
    }
}
