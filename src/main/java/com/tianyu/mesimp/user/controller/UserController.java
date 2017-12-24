package com.tianyu.mesimp.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.survey.bean.CompanyNum;
import com.tianyu.mesimp.user.entity.User;
import com.tianyu.mesimp.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("")
	public String userList(Model model) {
		
		return "user/userList";
	}
	
	@RequestMapping("list")
	@ResponseBody
	public ResponseVO<List<User>> getUserList(Model model) {
		List<User> resultList = null;
		try {
			resultList = userService.getUserList();
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<User>>exception();
		}
		return ResponseVO.<List<User>>build().setData(resultList);
	}
	
	@RequestMapping("add")
	public String addUser(Model model) {
		
		return "user/userForm";
	}
	
	@RequestMapping("edit")
	public String editUser(Model model) {
		
		return "user/userForm";
	}
}