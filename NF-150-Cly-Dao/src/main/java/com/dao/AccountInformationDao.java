package com.dao;

import com.entity.Administrador;
import org.apache.ibatis.annotations.Param;

public interface AccountInformationDao {
    int register(Administrador administrador);

    Administrador login(@Param("username") String username, @Param("password") String password);
}
