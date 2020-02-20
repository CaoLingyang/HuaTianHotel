package com.service.impl;

import com.dao.AccountDao;
import com.entity.Administrador;
import com.service.AdministradorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministradorServiceImpl implements AdministradorService {
    @Autowired
    AccountDao accountDao;
    @Override
    public int register(Administrador administrador) {
        return accountDao.register(administrador);
    }

    @Override
    public Administrador login(String username, String password) {
        return accountDao.login(username, password);
    }
}
