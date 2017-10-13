package com.tianyu.mesimp.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class IndexController {

	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("")
	public String index(){
		
		return "index";
	}
}
