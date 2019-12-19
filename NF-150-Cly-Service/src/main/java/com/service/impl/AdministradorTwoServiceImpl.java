package com.service.impl;

import com.dao.AccountInformationDaoTwo;
import com.entity.AdministradorEntity;
import com.service.AdministradorTwoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yangyang
 * @create2019/12/4
 */
@Service
public class AdministradorTwoServiceImpl implements AdministradorTwoService {
    @Autowired
    AccountInformationDaoTwo accountInformationDaoTwo;

    @Override
    public int Toregisteragain(AdministradorEntity administradorEntity) {
        return accountInformationDaoTwo.Toregisteragain(administradorEntity);
    }
}
