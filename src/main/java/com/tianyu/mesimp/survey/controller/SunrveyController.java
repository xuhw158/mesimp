package com.tianyu.mesimp.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 调查成果
 * @author xuhw
 *
 */
@Controller
@RequestMapping("/sunrvey")
public class SunrveyController {

	@RequestMapping("/company")
	public String companySunrvey() {
		
		return "sunrvey/company";
	}
	
	@RequestMapping("/industry")
	public String industrySunrvey() {
		
		return "sunrvey/industry";
	}
}
