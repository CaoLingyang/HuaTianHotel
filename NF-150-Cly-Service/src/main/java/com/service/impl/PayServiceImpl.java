package com.service.impl;

import com.dao.PayDao;
import com.entity.Pay;
import com.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/20
 */
@Service
public class PayServiceImpl implements PayService {
    @Autowired
    private PayDao payDao;
    @Override
    public int PayMoney(Pay pay) {
        return payDao.PayMoeny(pay);
    }

    @Override
    public List<Pay> getAllById(int pageNum, int pageSize) {
        return payDao.getAllById(pageNum, pageSize);
    }
}
