package com.service.impl;

import com.dao.AccountInformationDao;
import com.entity.Administrador;
import com.service.AdministradorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministradorServiceImpl implements AdministradorService {
    @Autowired
    AccountInformationDao accountInformationDao;
    @Override
    public int register(Administrador administrador) {
        return accountInformationDao.register(administrador);
    }

    @Override
    public Administrador login(String username, String password) {
        return accountInformationDao.login(username, password);
    }
}
