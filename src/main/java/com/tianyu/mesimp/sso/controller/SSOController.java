package com.tianyu.mesimp.sso.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.sso.bean.LoginUser;

@Controller
@RequestMapping("sso")
public class SSOController {

	@RequestMapping("login")
	public String login(Model model , String status){
		model.addAttribute("status", status);
		return "sso/login";
	}
	
	@RequestMapping("toLogin")
	@ResponseBody
	public ResponseVO<String> toLogin(String status){
		if("fail".equals(status)){
			return ResponseVO.exception();
		}
		return ResponseVO.build();
	}
	
	@RequestMapping("success")
	@ResponseBody
	public ResponseVO<LoginUser> success(){
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		LoginUser user = new LoginUser();
		user.setUsername(userDetails.getUsername());
		return ResponseVO.<LoginUser>build().setData(user);
	}
	
	@RequestMapping("toLogout")
	@ResponseBody
	public ResponseVO<String> toLogout(){
		return ResponseVO.build();
	}
}
