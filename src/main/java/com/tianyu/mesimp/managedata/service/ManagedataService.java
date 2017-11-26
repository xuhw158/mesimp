package com.tianyu.mesimp.managedata.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tianyu.mesimp.managedata.bean.IndustryInfo;

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

}
