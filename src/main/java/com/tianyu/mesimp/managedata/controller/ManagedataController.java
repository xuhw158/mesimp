package com.tianyu.mesimp.managedata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tianyu.mesimp.common.bean.ResponseVO;
import com.tianyu.mesimp.managedata.bean.IndustryInfo;
import com.tianyu.mesimp.managedata.service.ManagedataService;

@Controller
@RequestMapping("/managedata")
public class ManagedataController {

	@Autowired
	private ManagedataService managedataService;
	
	@RequestMapping("/industry")
	public String industryList(Model model) {
		
		return "managedata/industryList";
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
}
