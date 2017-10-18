package com.tianyu.mesimp.survey.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.survey.bean.CompanyNum;
import com.tianyu.mesimp.survey.service.SunrveyService;

/**
 * 调查成果
 * @author xuhw
 *
 */
@Controller
@RequestMapping("/sunrvey")
public class SunrveyController {

	@Autowired
	private SunrveyService sunrveyService;
	
	@RequestMapping("/company/num")
	public String companyNum() {
		
		return "sunrvey/company_num";
	}
	
	@ResponseBody
	@RequestMapping("/company/num/getData")
	public ResponseVO<List<CompanyNum>> getCompanyNumData(String codes) {
		
		List<CompanyNum> data = null;
		try {
			data = sunrveyService.getCompanyNumData(codes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<CompanyNum>>exception();
		}
		return ResponseVO.<List<CompanyNum>>build().setData(data);
	}
	
	
	
	@RequestMapping("/industry")
	public String industrySunrvey() {
		
		return "sunrvey/industry";
	}
}
