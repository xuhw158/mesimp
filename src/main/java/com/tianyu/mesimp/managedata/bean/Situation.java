package com.tianyu.mesimp.managedata.bean;

/**
 * 企业生产经营情况详细
 * @author xuhw
 *
 */
public class Situation {

	/**
	 * 指标名称
	 */
	private String name;
	/**
	 * 代码
	 */
	private String code;
	/**
	 * 单位
	 */
	private String unit;
	/**
	 * 数量
	 */
	private String number;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Situation(){}
	public Situation(String name, String code, String unit, String number) {
		super();
		this.name = name;
		this.code = code;
		this.unit = unit;
		this.number = number;
	}
	
	
}
