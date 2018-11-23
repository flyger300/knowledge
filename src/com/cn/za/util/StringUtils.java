package com.cn.za.util;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

public class StringUtils {

	private static final String COMMA = ",";
	private static final String SQLCOMA = "','";

	private static final String REG_IP = "((\\d|[1-9]\\d|1\\d\\d|2[0-4]\\d|25[0-5])\\.){4}";
	
	/**
	 * 功能: 把字符串转化成数字
	 * 
	 * @param str
	 *            原字符串
	 * @return int
	 */
	public static double parseDouble(String str) {
		double rs = 0;
		try {
			
			BigDecimal b = new BigDecimal(str);
			rs = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
			
		} catch (NumberFormatException e) {
			return 0;
		}
		return rs;
	}
	
	/**
	 * 功能: 把字符串转化成数字
	 * 
	 * @param str
	 *            原字符串
	 * @param defaultVal
	 *            默认值
	 * @return int
	 */
	public static int parseInt(String str, int defaultVal) {
		int rs = defaultVal;
		try {
			rs = Integer.parseInt(str);
		} catch (NumberFormatException e) {
			return defaultVal;
		}
		return rs;
	}

	/**
	 * 功能: 把字符串转化成数字
	 * 
	 * @param str
	 *            原字符串
	 * @return int
	 */
	public static int parseInt(String str) {
		return parseInt(str, 0);
	}

	/**
	 * 功能: 把字符串转化成数字
	 * 
	 * @param str
	 *            原字符串
	 * @return int
	 */
	public static long parseLong(String str) {
		long rs = 0;
		try {
			rs = Long.parseLong(str);
		} catch (NumberFormatException e) {
			return 0;
		}
		return rs;
	}

	/**
	 * 功能: 把null转换为空字符串
	 * 
	 * @param in
	 *            原字符串
	 * @return String
	 */
	public static String chgNull(String in) {
		String out = null;
		out = in;
		if (out == null || (out.trim()).equals("null")) {
			return "";
		} else {
			return out.trim();
		}
	}

	/**
	 * 功能: 判断字段串是否为空
	 * 
	 * @param in
	 *            字符串
	 * @return boolean
	 */
	public static boolean isNull(String in) {
		if (in == null || "".equals(in)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 功能: 计算总页数
	 * 
	 * @param size
	 *            总记录数
	 * @param pageSize
	 *            每页记录条数
	 * @return int 总页数
	 */
	public static int getPages(int size, int pageSize) {
		if (pageSize < 1)
			return 0;
		int pages = (size % pageSize == 0) ? (size / pageSize)
				: ((size / pageSize) + 1);
		return pages;
	}

	/**
	 * 功能: 把数组转换成字符串，中间用逗号分割
	 * 
	 * @param arr
	 *            字符串数组
	 * @return
	 */
	public static String arrToStr(String[] arr) {
		return arrToStr(arr, COMMA);
	}

	/**
	 * 功能: 把数组转换成字符串，中间用指定符号分割
	 * 
	 * @param arr
	 *            字符串数组
	 * @param comma
	 *            指定分割符号
	 * @return
	 */
	public static String arrToStr(String[] arr, String comma) {
		if (arr == null)
			return "";
		String str = "";
		int size = arr.length;
		for (int i = 0; i < size; i++) {
			if (!chgNull(arr[i]).equals("")) {
				str += str.equals("") ? arr[i] : comma + arr[i];
			}
		}
		return str;
	}

	/**
	 * 功能: 把List转换成字符串，中间用指定符号分割
	 * 
	 * @param list
	 *            要转换的List
	 * @param comma
	 *            指定的分割符号
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String listToStr(ArrayList list, String comma) {
		String str = "";
		if (list == null || list.size() < 1) {
			return "";
		}
		int size = list.size();
		for (int i = 0; i < size; i++) {
			str += str.equals("") ? (String) list.get(i) : comma
					+ (String) list.get(i);
		}
		return str;
	}

	/**
	 * 功能: 把List转换成字符串，中间用逗号分割
	 * 
	 * @param list
	 *            要转换的List
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String listToStr(ArrayList list) {
		return listToStr(list, COMMA);
	}

	/**
	 * 功能: 把List转换成字符串，中间用逗号分割
	 * 
	 * @param list
	 *            要转换的List
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String listToSql(ArrayList list) {
		return listToStr(list, SQLCOMA);
	}

	/**
	 * 功能: 把以逗号分割的字符串转换成数组
	 * 
	 * @param str
	 *            原字符串
	 * @return
	 */
	public static String[] strToArr(String str) {
		return strToArr(str, COMMA);
	}

	/**
	 * 功能: 把以指定符分割的字符串转换成数组
	 * 
	 * @param str
	 *            原字符串
	 * @param comma
	 *            指定分割字符
	 * @return
	 */
	public static String[] strToArr(String str, String comma) {
		String rs = chgNull(str);
		if ("".equals(rs))
			return null;
		return str.split(comma);
	}

	/**
	 * 功能: 把普通的评论转化成HTML类型的字符串
	 * 
	 * @param String
	 *            str
	 * @return String
	 */
	public static String HTMLEncode(String str) {
		if (str == null)
			return "";
		String tmpStr = str.replaceAll(" ", "&nbsp;").replaceAll("\n", "<br>");
		tmpStr = tmpStr.trim();
		return tmpStr;
	}

	/**
	 * 功能: 计算字符串的长度,包括中文、英文的
	 * 
	 * @param str
	 *            原字符串
	 * @return int
	 */
	public static int length(String str) {
		if (str == null)
			return 0;
		int sum = 0;
		for (int i = 0; i < str.length(); i++) {
			int ch_code = str.charAt(i);
			if (ch_code < 255) {
				sum++;
			} else {
				sum += 2;
			}
		}
		return sum;
	}

	/**
	 * 功能: 替换字符串
	 * 
	 * @param src
	 * @param oldStr
	 * @param newStr
	 * @return
	 */
	public static String replace(String src, String oldStr, String newStr) {
		int index = src.indexOf(oldStr);
		if (index == -1)
			return src;
		int len = src.length();
		int sublen = oldStr.length();
		return (src.substring(0, index) + newStr + replace(
				src.substring(index + sublen, len), oldStr, newStr));
	}

	/**
	 * 功能: 把字符串中的“''”替换为“'”
	 * 
	 * @param str
	 * @return
	 */
	public static String replaceQuoted(String str) {
		if (str == null)
			return "";
		if (str.indexOf("'") != -1) {
			str = replace(str, "'", "''");
		}
		return str;
	}

	/**
	 * 功能: 字符编码
	 * 
	 * @param in
	 * @return
	 */
	public static String coding(String in) {
		String out = null;
		out = StringUtils.chgNull(in);
		try {
			out = new String(out.getBytes("iso8859_1"), "gbk");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return out;
	}

	/**
	 * 功能: 增加字符串前后缀
	 * 
	 * @param str
	 *            原字符串
	 * @param prefix
	 *            前缀
	 * @param postfix
	 *            后缀
	 * @return
	 */
	public static String addFix(String str, String prefix, String postfix) {
		if (str == null)
			return null;
		StringBuffer sb = new StringBuffer();
		if (prefix != null) {
			sb.append(prefix);
			sb.append(str);
		}
		if (postfix != null) {
			sb.append(postfix);
		}
		return sb.toString();
	}

	/**
	 * 交验是否为IP地址
	 * 
	 * @param ip
	 * @return
	 */
	public static boolean validIP(String ip) {
		String tempIp = chgNull(ip);
		if (tempIp.equals("")) {
			return false;
		}
		Pattern pattern = Pattern.compile(REG_IP);
		return pattern.matcher(tempIp + ".").find();
	}

	/**
	 * 返回配置文件头信息
	 * 
	 * @param netDeviceIp
	 *            - 网络设备IP地址
	 * @param snmpString
	 *            - 网络设备的SNMP
	 * @param groupName
	 *            - 组名
	 * @return 配置文件头信息
	 */
	public static StringBuffer getPollTitle(String netDeviceIp,
			String snmpString, String groupName) {
		StringBuffer sbContent = new StringBuffer("");
		sbContent.append("[IP:" + netDeviceIp + ",");
		sbContent.append("CommunityName:" + snmpString + ",");
		sbContent.append("RegExpression:1.3.6.1(.[0-9]+)*,");
		sbContent.append("GROUPNAME:" + groupName + "]\n");
		return sbContent;
	}

	/**
	 * 返回预剖配置文件内容
	 * 
	 * @param netDeviceIp
	 *            - 网络设备IP地址
	 * @param snmpString
	 *            - 网络设备的SNMP
	 * @param groupName
	 *            - 组名
	 * @param descOid
	 *            - 描述Oid
	 * @return 预剖配置文件内容
	 */
	public static String getPrePollContent(String netDeviceIp,
			String snmpString, String groupName, String descOid) {
		StringBuffer sbContent = getPollTitle(netDeviceIp, snmpString,
				groupName);
		sbContent.append("log_table\n");
		sbContent.append("{\n");
		sbContent.append(descOid + "\n");
		sbContent.append("}\n");
		return sbContent.toString();
	}

	/**
	 * 功能：替换空格、回车、换行
	 * 
	 * @param str
	 *            替换字符串
	 * @return 替换完字符串
	 */
	public static String replaceBlank(String str) {
		Pattern p = Pattern.compile("\t|\r|\n");
		Matcher m = p.matcher(str);
		String after = m.replaceAll("");
		return after;
	}

	public static boolean isNulls(String... strBuf) {
		String[] strArray = strBuf;
		for (int i = 0; i < strArray.length; i++) {
			if (strArray[i] == null || "".equals(strArray[i]))
				return true;
		}
		return false;
	}

	public static void main(String[] args) {
		System.out.println(" : " + StringUtils.isNulls(null, "", null));

	}

	/**
	 * 功能: 字符串中的特殊符号互相替换
	 * 
	 * @param str
	 * @return
	 */
	public static String strReplace(String from, String to, String source) {
		StringBuffer bf = new StringBuffer("");
		StringTokenizer st = new StringTokenizer(source, from, true);
		while (st.hasMoreTokens()) {
			String tmp = st.nextToken();
			if (tmp.equals(from)) {
				bf.append(to);
			} else {
				bf.append(tmp);
			}
		}
		return bf.toString();
	}

	public static String getSearchString(List<String> list, String keyword) {
		String ret = "";
		for (String s : list) {
			if ("".equals(ret)) {
				ret = s + " like '%" + keyword + "%' ";
			} else {
				ret = ret + " or " + s + " like '%" + keyword + "%' ";
			}
		}
		return ret;
	}

	public static String getJSONObjectStringValueIfEmpty(JSONObject obj,
			String name, String defaultString) {
		if (obj == null) {
			if (defaultString == null) {
				return "";
			} else {
				return defaultString;
			}
		} else {
			if (name == null) {
				if (defaultString == null) {
					return "";
				} else {
					return defaultString;
				}
			}
			String value = null;
			try {
				value = obj.getString(name);
			} catch (JSONException e) {
				if (defaultString == null) {
					value = "";
				} else {
					value = defaultString;
				}
			}
			return value;
		}
	}

	public static String getJSONObjectStringValueIfEmpty(JSONObject obj,
			String name) {
		return getJSONObjectStringValueIfEmpty(obj,name,null);
	}
	
	// 十进制
		public static boolean isOctNumber(String str) {
			boolean flag = false;
			for (int i = 0, n = str.length(); i < n; i++) {
				char c = str.charAt(i);
				if (c == '0' | c == '1' | c == '2' | c == '3' | c == '4' | c == '5' | c == '6' | c == '7' | c == '8'
						| c == '9') {
					flag = true;
				}
			}
			return flag;
		}

		// 十六进制
		public static boolean isHexNumber(String str) {
			boolean flag = false;
			for (int i = 0; i < str.length(); i++) {
				char cc = str.charAt(i);
				if (cc == '0' || cc == '1' || cc == '2' || cc == '3' || cc == '4' || cc == '5' || cc == '6' || cc == '7'
						|| cc == '8' || cc == '9' || cc == 'A' || cc == 'B' || cc == 'C' || cc == 'D' || cc == 'E'
						|| cc == 'F' || cc == 'a' || cc == 'b' || cc == 'c' || cc == 'c' || cc == 'd' || cc == 'e'
						|| cc == 'f') {
					flag = true;
				}
			}
			return flag;
		}
		
		/*public static boolean isEmpty(String str) {
			if ("".equals(str) || str == null)
				return true;
			return false;		
		}*/
		
		public static boolean isOctNumberRex(String str) {
			String validate = "\\d+";
			return str.matches(validate);
		}

		public static boolean isHexNumberRex(String str){
				String validate = "(?i)[0-9a-f]+";
				return str.matches(validate);
		}
}

