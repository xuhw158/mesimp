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
		resultList.add(new NameInfo("1", "01海洋渔业", "", "盘锦鑫农水产养殖有限公司", "", "011", "盘锦市盘山县", "张闻天", "18242711110"));
		resultList.add(new NameInfo("2","01海洋渔业","","丹东大海船运有限公司","","013","丹东市边境经济合作区","大海","13941536137"));
		resultList.add(new NameInfo("3","01海洋渔业","","丹东边境经济合作区津维食品冷冻厂","","014","丹东市边境经济合作区","卢金凤","13009210859"));
		resultList.add(new NameInfo("4","01海洋渔业","","丹东市振兴区东安民冷库","","014","丹东市边境经济合作区","姜娟","13842509686"));
		resultList.add(new NameInfo("5","01海洋渔业","","丹东边境东泰鱼粉有限公司合作区","","014","丹东市边境经济合作区","冯","15841593098"));
		resultList.add(new NameInfo("6","01海洋渔业","","丹东胜鼎食品有限公司","","014","丹东市边境经济合作区","王琴","13941580707"));
		resultList.add(new NameInfo("7","01海洋渔业","","丹东华益食品有限公司","","014","丹东市边境经济合作区","李晓艳","13904956260"));
		resultList.add(new NameInfo("8","01海洋渔业","","丹东元一海产精制品有限公司","","014","丹东市边境经济合作区","郭林","3143777"));
		resultList.add(new NameInfo("9","01海洋渔业","","东港市中海水产食品有限公司","","014","丹东市东港市","田立武","15330899999"));
		resultList.add(new NameInfo("10","01海洋渔业","","丹东鸿洋食品有限公司","","014","丹东市东港市","孙笑宇","7816777"));
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
