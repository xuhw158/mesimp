package com.tianyu.mesimp.user.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tianyu.mesimp.user.entity.User;

@Service
public class UserService {

	public List<User> getUserList() {
		
		List<User> userList = new ArrayList<User>();
		for (int i = 0; i < 10 ; i++){
			User u = new User();
			u.setId(i+1);
			u.setUserName("zhangsan");
			u.setRealName("张三");
			u.setDepartment("信息部");
			u.setAreaType("大连");
			userList.add(u);
		}
			
		return userList;
	}

}
