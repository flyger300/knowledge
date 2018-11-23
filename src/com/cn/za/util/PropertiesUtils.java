package com.cn.za.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Properties;

public class PropertiesUtils {

	private static PropertiesUtils instance;
	private Properties properties;

	/**
	 * 功能: 获取配置实例
	 * 
	 * @return PropertyReader
	 */
	public static PropertiesUtils getIntance() {
		if (instance == null)
			instance = new PropertiesUtils("/conf.properties");
		return instance;
	}

	/**
	 * 功能: 根据指定路径获取配置实例
	 * 
	 * @return PropertyReader
	 */
	public static PropertiesUtils getIntance(String path) {
		instance = new PropertiesUtils(path);
		return instance;
	}

	/**
	 * 构造方法
	 */
	private PropertiesUtils(String path) {
		properties = this.createProperties(path);
		if (properties == null)
			properties = new Properties();
	}

	/**
	 * 功能: 得到一个整数属性,默认为0
	 * 
	 * @param key
	 *            键值
	 * @return Integer
	 */
	public Integer getInt(String key) {
		String prop = this.getProperty(key);
		if ("".equals(prop))
			return Integer.valueOf(0);
		return Integer.valueOf(prop);
	}

	/**
	 * 功能: 得到一个长整数属性,默认为0
	 * 
	 * @param key
	 *            键值
	 * @return Long
	 */
	public Long getLong(String key) {
		String prop = this.getProperty(key);
		if (prop.equals(""))
			return Long.valueOf(0);
		return Long.valueOf(prop);
	}

	/**
	 * 功能: 得到一个属性值
	 * 
	 * @param key
	 *            键值
	 * @return String
	 */
	public String getProperty(String key) {
		if (StringUtils.chgNull(key).equals(""))
			return "";
		return StringUtils.chgNull(properties.getProperty(key));
	}

	/**
	 * 功能: 得到一个属性
	 * 
	 * @param key
	 *            键值
	 * @param defaultValue
	 *            默认值
	 * @return String
	 */
	public String getProperty(String key, String defaultValue) {
		if (StringUtils.chgNull(key).equals(""))
			return "";
		return StringUtils.chgNull(properties.getProperty(key, defaultValue));
	}

	/**
	 * 功能: 把读取的文字进行中文转化
	 * 
	 * @param key
	 *            键值
	 * @return String
	 */
	public String getConvertGBK(String key) {
		String rs = "";
		String prop = this.getProperty(key);
		if (prop.equals(""))
			return rs;
		else {
			try {
				rs = new String(prop.getBytes("ISO8859_1"), "GBK");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return rs;
	}

	/**
	 * 功能: 得到所有的属性值
	 * 
	 * @return Enumeration
	 */
	public Enumeration<?> getValues() {
		try {
			return properties.elements();
		} catch (Exception ex) {
			return null;
		}
	}

	/**
	 * 功能: 得到所有键值
	 * 
	 * @return Enumeration
	 */
	public Enumeration<?> getKeys() {
		try {
			return properties.propertyNames();
		} catch (Exception ex) {
			return null;
		}
	}

	/**
	 * 功能: 根据给定的路径读取属性文件
	 * 
	 * @param path
	 *            指定路径
	 * @return properties
	 */
	private Properties createProperties(String path) {
		Properties p = null;
		Object obj = null;
		try {
			obj = getClass().getResourceAsStream(path);
			if (obj == null)
				obj = new FileInputStream(path);
		} catch (IOException e) {
			System.err.println("System can not find the property!");
		}
		if (obj != null) {
			try {
				p = new Properties();
				p.load((InputStream) obj);
				((InputStream) obj).close();
			} catch (IOException e) {
				p = null;
			}
		}
		return p;
	}

}
