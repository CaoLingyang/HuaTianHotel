package com.dao;
/**
 * @author yangyang
 * @create2019/12/11
 */
import com.entity.Administrador;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AccountDao {
    int register(Administrador administrador);


    Administrador login(@Param("username") String username, @Param("password") String password);
}
