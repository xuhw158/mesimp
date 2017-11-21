package com.tianyu.mesimp.common.bean;

/**
 * 响应类
 * @author xuhw
 *
 */
public class ResponseVO<T> {

	/**
	 * 状态码
	 */
	private Integer code;
	/**
	 * 消息（错误信息）
	 */
	private String msg;
	/**
	 * 返回数据
	 */
	private T data;
	
	public Integer getCode() {
		return code;
	}
	public ResponseVO<T> setCode(Integer code) {
		this.code = code;
		return this;
	}
	public String getMsg() {
		return msg;
	}
	public ResponseVO<T> setMsg(String msg) {
		this.msg = msg;
		return this;
	}
	public T getData() {
		return data;
	}
	public ResponseVO<T> setData(T data) {
		this.data = data;
		return this;
	}
	
	/**
	 * 状态码定义
	 */
	public interface ResponseCode{
		
		/**
		 * 成功
		 */
		public static final Integer SUCCESS = 0;
		/**
		 * 业务报错
		 */
		public static final Integer ERROR = 1;
		/**
		 * 程序异常
		 */
		public static final Integer EXCEPTION = -1;
		
	}
	
	/**
	 * 默认创建方法
	 * @return
	 */
	public static <T> ResponseVO<T> build(){
		ResponseVO<T> responseVO = new ResponseVO<T>();
		return responseVO.setCode(ResponseCode.SUCCESS);
	}
	
	/**
	 * 默认抛出异常
	 * @return
	 */
	public static <T> ResponseVO<T> exception(){
		ResponseVO<T> responseVO = new ResponseVO<T>();
		return responseVO.setCode(ResponseCode.EXCEPTION).setMsg("服务器发生异常！");
	}
	
	
}
