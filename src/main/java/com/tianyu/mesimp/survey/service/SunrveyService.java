package com.tianyu.mesimp.survey.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tianyu.mesimp.survey.bean.CompanyNum;

@Service
public class SunrveyService {

	public List<CompanyNum> getCompanyNumData() {
		List<CompanyNum> datalist = new ArrayList<CompanyNum>();
		datalist.add(new CompanyNum("110000", "沈阳市", 7834,1));
		datalist.add(new CompanyNum("116000", "大连市", 42305,2));
		datalist.add(new CompanyNum("114000", "鞍山市", 2040,3));
		datalist.add(new CompanyNum("113000", "抚顺市", 2589,4));
		datalist.add(new CompanyNum("117000", "本溪市", 706,5));
		datalist.add(new CompanyNum("118000", "丹东市", 21456,6));
		datalist.add(new CompanyNum("121000", "锦州市", 9831,7));
		datalist.add(new CompanyNum("115000", "营口市", 25230,8));
		datalist.add(new CompanyNum("123000", "阜新市", 132,9));
		datalist.add(new CompanyNum("111000", "辽阳市", 98,10));
		datalist.add(new CompanyNum("124000", "盘锦市", 10234,11));
		datalist.add(new CompanyNum("112000", "铁岭市", 348,12));
		datalist.add(new CompanyNum("122000", "朝阳市", 143,13));
		datalist.add(new CompanyNum("125000", "葫芦岛市", 12387,14));
		
		return datalist;
	}

	
}
