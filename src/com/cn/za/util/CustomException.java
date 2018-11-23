package com.cn.za.util;

//自定义异常处理器类
//针对预期的异常需要在程序中抛出此类异常
public class CustomException extends Exception{

	private static final long serialVersionUID = -2733855062028545461L;
	
	//异常信息
	public String message ;

	public CustomException(String message){
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
  
}