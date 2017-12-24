package com.tianyu.mesimp.main.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.sso.bean.LoginUser;

@Controller
@RequestMapping("")
public class IndexController {

	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("")
	public String index(Model model){
		try {
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			LoginUser user = new LoginUser();
			user.setUsername(userDetails.getUsername());
			model.addAttribute("user", user);
			model.addAttribute("isLogin", 1);
		} catch (Exception e) {
			model.addAttribute("isLogin", 0);
		}
		return "index";
	}
	
	@RequestMapping("hasLogin")
	@ResponseBody
	public ResponseVO<LoginUser> hasLogin(){
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		LoginUser user = new LoginUser();
		user.setUsername(userDetails.getUsername());
		return ResponseVO.<LoginUser>build().setData(user);
	}
}
