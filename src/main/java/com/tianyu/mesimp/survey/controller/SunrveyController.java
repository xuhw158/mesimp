package com.tianyu.mesimp.survey.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	/**
	 * 单位清查数量
	 * @return
	 */
	@RequestMapping("/company/num")
	public String companyNum(Model model) {
		model.addAttribute("menu", "num");
		return "sunrvey/company_num";
	}
	/**
	 * 海域证书数量
	 * @return
	 */
	@RequestMapping("/company/certificate")
	public String companyCertificate(Model model) {
		model.addAttribute("menu", "certificate");
		return "sunrvey/company_certificate";
	}
	/**
	 * 用海岸线数量
	 * @return
	 */
	@RequestMapping("/company/coastline")
	public String companyCoastline(Model model) {
		model.addAttribute("menu", "coastline");
		return "sunrvey/company_coastline";
	}
	/**
	 * 用海岸线长度
	 * @return
	 */
	@RequestMapping("/company/shoreline")
	public String companyShoreline(Model model) {
		model.addAttribute("menu", "shoreline");
		return "sunrvey/company_shoreline";
	}
	/**
	 * 上市企业数量
	 * @return
	 */
	@RequestMapping("/company/belisted")
	public String companyBelisted(Model model) {
		model.addAttribute("menu", "belisted");
		return "sunrvey/company_belisted";
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
	
	/**
	 * 企业数量
	 * @return
	 */
	@RequestMapping("/industry/compNum")
	public String industryCompNum(Model model) {
		model.addAttribute("menu", "compNum");
		return "sunrvey/industry_compNum";
	}
	/**
	 * 产业数量
	 * @return
	 */
	@RequestMapping("/industry/num")
	public String industryNum(Model model) {
		model.addAttribute("menu", "num");
		return "sunrvey/industry_num";
	}
	
}
