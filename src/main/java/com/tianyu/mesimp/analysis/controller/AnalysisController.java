package com.tianyu.mesimp.analysis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.analysis.service.AnalysisService;
import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.survey.bean.CompanyNum;
import com.tianyu.mesimp.survey.service.SunrveyService;

/**
 * 数据分析
 * @author xuhw
 *
 */
@Controller
@RequestMapping("/analysis")
public class AnalysisController {

	@Autowired
	private AnalysisService analysisService;
	
	@RequestMapping("/industry")
	public String companyNum() {
		
		return "analysis/industry";
	}
	
	@ResponseBody
	@RequestMapping("/industry/getData")
	public ResponseVO<List<CompanyNum>> getCompanyNumData(String codes) {
		
		List<CompanyNum> data = null;
		try {
			data = analysisService.getIndustryNumData();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<CompanyNum>>exception();
		}
		return ResponseVO.<List<CompanyNum>>build().setData(data);
	}
	
	
}
