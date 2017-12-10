package com.tianyu.mesimp.managedata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.managedata.bean.IndustryInfo;
import com.tianyu.mesimp.managedata.bean.NameInfo;
import com.tianyu.mesimp.managedata.bean.Situation;
import com.tianyu.mesimp.managedata.service.ManagedataService;

@Controller
@RequestMapping("/managedata")
public class ManagedataController {

	@Autowired
	private ManagedataService managedataService;
	
	@RequestMapping("/name")
	public String nameList(Model model) {
		
		return "managedata/nameList";
	}
	
	@RequestMapping("/industry")
	public String industryList(Model model) {
		
		return "managedata/industryList";
	}
	
	@RequestMapping("/industry/situation")
	public String industrySituation(Model model,String id) {
		model.addAttribute("id", id);
		return "managedata/inc/situation";
	}
	
	@RequestMapping("/name/list")
	@ResponseBody
	public ResponseVO<List<NameInfo>> getNameList(Model model) {
		List<NameInfo> resultList = null;
		try {
			resultList = managedataService.getNameList();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<NameInfo>>exception();
		}
		return ResponseVO.<List<NameInfo>>build().setData(resultList);
	}
	
	
	@RequestMapping("/industry/list")
	@ResponseBody
	public ResponseVO<List<IndustryInfo>> getIndustryList(Model model) {
		List<IndustryInfo> resultList = null;
		try {
			resultList = managedataService.getIndustryList();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<IndustryInfo>>exception();
		}
		return ResponseVO.<List<IndustryInfo>>build().setData(resultList);
	}
	
	
	@RequestMapping("/industry/situationData")
	@ResponseBody
	public ResponseVO<List<Situation>> getIndustrySituationData(Model model , String id) {
		List<Situation> resultList = null;
		try {
			resultList = managedataService.getIndustrySituation(id);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseVO.<List<Situation>>exception();
		}
		return ResponseVO.<List<Situation>>build().setData(resultList);
	}
	
}
