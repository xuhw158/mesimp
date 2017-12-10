package com.tianyu.mesimp.managedata.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tianyu.mesimp.managedata.bean.IndustryInfo;
import com.tianyu.mesimp.managedata.bean.NameInfo;
import com.tianyu.mesimp.managedata.bean.Situation;

@Service
public class ManagedataService {

	public List<IndustryInfo> getIndustryList() {
		List<IndustryInfo> resultList = new ArrayList<IndustryInfo>();
		for (int i = 0; i < 10 ; i++){
			IndustryInfo info = new IndustryInfo();
			info.setEnterpriseName("企业名称");
			info.setArea("大连");
			info.setAddress("大连市高新区");
			info.setEnterpriseCode("123141415");
			info.setContacts("张三");
			info.setTelephone("13100000000");
			info.setIndustryType("海洋渔业");
			info.setManagementSituation("良好");
			
			resultList.add(info);
		}
			
		return resultList;
	}

	public List<NameInfo> getNameList() {
		List<NameInfo> resultList = new ArrayList<NameInfo>();
		for (int i = 0; i < 10 ; i++){
			NameInfo info = new NameInfo();
			info.setEnterpriseName("企业名称");
			info.setArea("大连");
			info.setAddress("大连市高新区");
			info.setEnterpriseCode("123141415");
			info.setContacts("张三");
			info.setTelephone("13100000000");
			info.setIndustryType("海洋渔业");
			info.setManagementSituation("良好");
			
			resultList.add(info);
		}
			
		return resultList;
	}

	
	public List<Situation> getIndustrySituation(String id) {
		List<Situation> resultList = new ArrayList<Situation>();
		resultList.add(new Situation("海水养殖产量", "A01", "吨", "1"));
		resultList.add(new Situation("海水捕捞产量", "A02", "吨", ""));
		resultList.add(new Situation("远洋捕捞产量", "A03", "吨", ""));
		resultList.add(new Situation("海产品销售量", "A04", "吨", ""));
		resultList.add(new Situation("海产品销售金额", "A05", "万元", ""));
		resultList.add(new Situation("渔业灾情直接经济损失", "A06", "万元", ""));
		return resultList;
	}

}
