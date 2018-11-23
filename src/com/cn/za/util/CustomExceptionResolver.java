package com.cn.za.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.percederberg.mibble.MibLoaderException;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class CustomExceptionResolver implements HandlerExceptionResolver {
	
	private static Logger logger = Logger.getLogger(CustomExceptionResolver.class);
	
    @Override
    public ModelAndView resolveException(HttpServletRequest request,
            HttpServletResponse response, Object handler, Exception ex) {
    	
    	logger.info("=====" + ex.getMessage() + "=====");
         
        try {
        	response.setContentType("application/json;charset=UTF-8");//这行很重要，否则前端ajax的error无法取得例外信息
        	PrintWriter writer = response.getWriter();  
        	String msg = "";
        	
        	if(ex instanceof MibLoaderException) {
        		msg = ((MibLoaderException)ex).getMessage();
            } else if(ex instanceof IOException) {
            	msg = ((IOException)ex).getMessage();
            } else  if(ex instanceof java.sql.SQLException) {
            	msg = ((java.sql.SQLException)ex).getMessage();
            } else if(ex instanceof java.lang.ArithmeticException) {
            	msg = ((java.lang.ArithmeticException)ex).getMessage();
            } else if(ex instanceof java.net.ConnectException){ //如果抛出的是系统自定义异常则直接转换
            	msg = ((java.net.ConnectException)ex).getMessage();
            } else if(ex instanceof com.jcraft.jsch.JSchException){ //如果抛出的是系统自定义异常则直接转换
            	msg = ((com.jcraft.jsch.JSchException)ex).getMessage();
            } else if(ex instanceof CustomException){ //如果抛出的是系统自定义异常则直接转换
            	msg = ((CustomException)ex).getMessage();
            } else{//如果抛出的不是系统自定义异常则重新构造一个未知错误异常。
            	msg = "未知名的错误，请联系管理员";
            } 
            logger.info(String.format("msg = [%s]",msg));
        	writer.write(msg);
            writer.flush();
            writer.close();
            
        } catch (IOException e) {  
              
        } 

        return null;
    }
}