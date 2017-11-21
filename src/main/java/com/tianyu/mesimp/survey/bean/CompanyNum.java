package com.tianyu.mesimp.survey.bean;

public class CompanyNum {

	/**
	 * 省份编码
	 */
	private String cityCode;
	/**
	 * 省份名称
	 */
	private String cityName;
	/**
	 * 企业数
	 */
	private Integer number;
	/**
	 * 排序
	 */
	private Integer sort;

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
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

	public CompanyNum() {
	}

	public CompanyNum(String cityCode, String cityName, Integer number, Integer sort) {
		this.cityCode = cityCode;
		this.cityName = cityName;
		this.number = number;
		this.sort = sort;
	}

}
