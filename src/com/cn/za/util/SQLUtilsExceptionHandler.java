package com.cn.za.util;

public class SQLUtilsExceptionHandler extends Exception {

	private static final long serialVersionUID = 22L;

	@Override
	public String getMessage() {
		return "Params: The Parameters not exists";
	}

	@Override
	public void printStackTrace() {
		super.printStackTrace();
	}

	public SQLUtilsExceptionHandler() {

	}

}
