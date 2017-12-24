package com.tianyu.mesimp.managedata.bean;

public class NameInfo {

	// 
	private String id;
	// 产业类别
	private String industryType;
	// 组织机构代码
	private String enterpriseCode;
	// 单位名称
	private String name;
	// 主营业务
	private String business;
	// 行业代码
	private String industryCode;
	// 所在地
	private String area;
	// 联系人
	private String contacts;
	// 联系方式
	private String telephone;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIndustryType() {
		return industryType;
	}
	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}
	public String getEnterpriseCode() {
		return enterpriseCode;
	}
	public void setEnterpriseCode(String enterpriseCode) {
		this.enterpriseCode = enterpriseCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getIndustryCode() {
		return industryCode;
	}
	public void setIndustryCode(String industryCode) {
		this.industryCode = industryCode;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getContacts() {
		return contacts;
	}
	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public NameInfo(){}
	
	public NameInfo(String id, String industryType, String enterpriseCode,
			String name, String business, String industryCode, String area,
			String contacts, String telephone) {
		super();
		this.id = id;
		this.industryType = industryType;
		this.enterpriseCode = enterpriseCode;
		this.name = name;
		this.business = business;
		this.industryCode = industryCode;
		this.area = area;
		this.contacts = contacts;
		this.telephone = telephone;
	}
	
}
