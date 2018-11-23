package com.cn.za.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class SQLUtils {

	public static String queryString(String str) {
		String[] strs = str.split(":QUERY:");
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < strs.length; i++) {
			String[] strings = strs[i].split("/");
			if (strings.length > 1) {
				buffer.append(" " + strings[0] + " like '%" + strings[1]
						+ "%' and");
			}
		}
		return buffer.toString();
	}

	public static String queryString(Map<String, String> maps) {
		StringBuffer buffer = new StringBuffer();
		Iterator<Entry<String, String>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> entry = it.next();
			String key = entry.getKey();
			String value = entry.getValue();
			if ((value != null) && !"".equals(value)) {
				buffer.append(" " + key + " like '%" + value + "%' and");
			}
		}
		return buffer.toString();
	}

	public static String queryComString(String str) {
		String[] strs = str.split(":QUERY:");
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < strs.length; i++) {
			String[] strings = strs[i].split("/");
			if (strings.length > 1) {
				buffer.append(" " + strings[0] + " like '%" + strings[1]
						+ "%' and");
			}
		}
		String string = buffer.toString();
		if (!"".equals(string)) {
			return " where" + string.substring(0, string.length() - 3);
		} else {
			return string;
		}
	}

	/*
	 * 并且关系
	 */
	public static String queryComString(Map<String, String> maps) {
		StringBuffer buffer = new StringBuffer();
		Iterator<Entry<String, String>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> entry = it.next();
			String key = entry.getKey();
			String value = entry.getValue();
			if ((value != null) && !"".equals(value)) {
				buffer.append(" " + key + " LIKE '%" + value + "%' AND");
			}
		}
		String str = buffer.toString();
		if ("".equals(str)) {
			return "";
		} else {
			return " WHERE" + str.substring(0, str.length() - 4);
		}
	}

	/*
	 * 或者关系
	 */
	public static String queryOrComString(Map<String, String> maps) {
		StringBuffer buffer = new StringBuffer();
		Iterator<Entry<String, String>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> entry = it.next();
			String key = entry.getKey();
			String value = entry.getValue();
			if ((value != null) && !"".equals(value)) {
				buffer.append(" " + key + " = '" + value + "' or");
			}
		}
		String str = buffer.toString();
		if ("".equals(str)) {
			return "";
		} else {
			return " where" + str.substring(0, str.length() - 4);
		}
	}

	public static String formatString(String str) {
		if (str != null) {
			return str;
		} else {
			return "";
		}
	}

	public static String insertString(Map<String, Object> maps)
			throws SQLUtilsExceptionHandler {
		StringBuffer buffer = new StringBuffer();
		StringBuffer sb = new StringBuffer();
		Iterator<Entry<String, Object>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			Object value = entry.getValue();
			if ((value != null) && (value instanceof String)
					&& !"create_time".equals(key)
					&& !"modify_time".equals(key)) {
				sb.append(key + ", ");
				buffer.append("'" + value + "', ");
			} else if (value != null) {
				sb.append(key + ", ");
				buffer.append(value + ", ");
			}
		}
		String beforeStr = sb.toString();
		String afterStr = buffer.toString();
		if ((beforeStr.length() == 0) || (afterStr.length() == 0)) {
			throw new SQLUtilsExceptionHandler();
		} else {
			return "(" + beforeStr.subSequence(0, beforeStr.length() - 2)
					+ ") VALUES("
					+ afterStr.substring(0, afterStr.length() - 2) + ")";
		}
	}
	public static String insertString(Map<String, Object> maps,Map<String,String> fieldsType)
			throws SQLUtilsExceptionHandler {
		StringBuffer buffer = new StringBuffer();
		StringBuffer sb = new StringBuffer();
		Iterator<Entry<String, Object>> it = maps.entrySet().iterator();
		
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			Object value = entry.getValue();
			String keyType = fieldsType.get(key.toUpperCase());
			//keyType = keyType.toUpperCase();
			if(value==null){
				
			}else if("".equals(value) && 
					("INT".equals(keyType)
					|| "DECIMAL".equals(keyType)
					|| "FLOAT".equals(keyType)
					|| "TIMESTAMP".equals(keyType)
					|| "DATE".equals(keyType)
					)){
				//屏蔽空字符串时这几种类型的值
			}else if ( (value instanceof String)
					&& !"create_time".equals(key.toLowerCase())
					&& !"modify_time".equals(key.toLowerCase())
					&& (
							("VARCHAR".equals(keyType) || "CHAR".equals(keyType) || keyType==null) 
						)
					) {
				sb.append(key + ", ");
				buffer.append("'" + value + "', ");
			}else if("TIMESTAMP".equals(keyType)
				|| "DATE".equals(keyType)
				){
				sb.append(key + ", ");
				buffer.append(" str_to_date('"+value + "','%Y-%m-%d %H:%i:%s') , ");
			}else{
				sb.append(key + ", ");
				buffer.append(value + ", ");
			} 
		}
		String beforeStr = sb.toString();
		String afterStr = buffer.toString();
		if ((beforeStr.length() == 0) || (afterStr.length() == 0)) {
			throw new SQLUtilsExceptionHandler();
		} else {
			return "(" + beforeStr.subSequence(0, beforeStr.length() - 2)
					+ ") VALUES("
					+ afterStr.substring(0, afterStr.length() - 2) + ")";
		}
		}
	public static String setString(Map<String, Object> maps,Map<String,String> fieldsType)
			throws SQLUtilsExceptionHandler {
		StringBuffer buffer = new StringBuffer();
		Iterator<Entry<String, Object>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			Object value = entry.getValue();
			String keyType = fieldsType.get(key.toUpperCase());
			//keyType = keyType.toUpperCase();
			if(value==null){

			}else if("".equals(value) && 
					("INT".equals(keyType)
					|| "DECIMAL".equals(keyType)
					|| "FLOAT".equals(keyType)
					|| "TIMESTAMP".equals(keyType)
					|| "DATE".equals(keyType)
					)){
				buffer.append(" " + key + " = null ,");
				//屏蔽空字符串时这几种类型的值
			}else if ( (value instanceof String)
					&& !"modify_time".equals(key.toLowerCase())
					&& (
							("VARCHAR".equals(keyType) || "CHAR".equals(keyType) || keyType==null) 
						)
					) {
				buffer.append(" " + key + " = '" + value + "',");
			}else if("TIMESTAMP".equals(keyType)
					|| "DATE".equals(keyType)
					){
				buffer.append(" " + key + " = str_to_date('"+value + "','%Y-%m-%d %H:%i:%s') , ");
			} else if (value != null) {
				buffer.append(" " + key + " = " + value + ",");
			}
		}
		String str = buffer.toString();
		if (str.length() == 0) {
			throw new SQLUtilsExceptionHandler();
		} else {
			return str.substring(0, str.length() - 1);
		}
	}
	public static String setString(Map<String, Object> maps )
			throws SQLUtilsExceptionHandler {
		StringBuffer buffer = new StringBuffer();
		Iterator<Entry<String, Object>> it = maps.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			Object value = entry.getValue();
			if ((value != null) && (value instanceof String)
					&& !"modify_time".equals(key)) {
				buffer.append(" " + key + " = '" + value + "',");
			} else if (value != null) {
				buffer.append(" " + key + " = " + value + ",");
			}
		}
		String str = buffer.toString();
		if (str.length() == 0) {
			throw new SQLUtilsExceptionHandler();
		} else {
			return str.substring(0, str.length() - 1);
		}
	}
	public static String setString(String str) {
		String[] strs = str.split(":SET:");
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < strs.length; i++) {
			buffer.append(" " + strs[i].split("=")[0] + " = '"
					+ getEqualValue(strs[i]) + "', ");

		}
		String string = buffer.toString();
		if (!"".equals(string)) {
			return " set" + string.substring(0, string.length() - 2);
		} else {
			return string;
		}
	}

	public static String getEqualValue(String str) {
		byte[] bytes = str.getBytes();
		for (int i = 0; i < bytes.length; i++) {
			if (bytes[i] == '=') {
				return removeByte(bytes, 0, i + 1);
			}
		}
		return "";
	}

	public static String removeByte(byte[] bts, int index, int number) {
		List<Byte> list = new ArrayList<Byte>();
		for (int i = 0; i < bts.length; i++) {
			if ((i < index) || (i >= number + index)) {
				list.add(bts[i]);
			}
		}
		byte[] byts = new byte[list.size()];
		for (int m = 0; m < byts.length; m++) {
			byts[m] = list.get(m);
		}
		return new String(byts);
	}

}
