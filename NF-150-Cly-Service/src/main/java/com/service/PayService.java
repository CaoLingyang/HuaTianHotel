package com.service;

import com.entity.Pay;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author yangyang
 * @create2019/12/20
 */
public interface PayService {
    int PayMoney(Pay pay);
    List<Pay> getAllById(@RequestParam("pageNum")int pageNum,
                         @RequestParam("pageSize")int pageSize);
}
