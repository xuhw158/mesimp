package com.tianyu.mesimp.survey.bean;

public class CompanyNum {

	/**
	 * 省份编码
	 */
	private String provinceCode;
	/**
	 * 省份名称
	 */
	private String provinceName;
	/**
	 * 企业数
	 */
	private Integer number;
	/**
	 * 排序
	 */
	private Integer sort;
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public CompanyNum() {}
	
	public CompanyNum(String provinceCode, String provinceName, Integer number, Integer sort) {
		this.provinceCode = provinceCode;
		this.provinceName = provinceName;
		this.number = number;
		this.sort = sort;
	}
	
	
}
