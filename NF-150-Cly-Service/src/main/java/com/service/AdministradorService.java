package com.service;

import com.entity.Administrador;

public interface AdministradorService {
    public int register(Administrador administrador);
    public Administrador login(String username, String password);
}
