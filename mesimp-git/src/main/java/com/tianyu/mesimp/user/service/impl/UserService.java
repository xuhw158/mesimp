package com.tianyu.mesimp.user.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tianyu.mesimp.user.dao.UserMapper;
import com.tianyu.mesimp.user.entity.User;
import com.tianyu.mesimp.user.service.IUserService;

@Service("userService")
public class UserService implements IUserService {

    @Resource
    private UserMapper userDao;

    public User getUserById(int userId) {
        return this.userDao.selectByPrimaryKey(userId);
    }

}