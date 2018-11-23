package com.cn.za.util;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import com.jcraft.jsch.SftpException;

/**
 * 
 * @author Lx_star555 时区转换
 */
public class UTCUtils {

	// 获取当前时间的UTC（精确到秒）
	public static Long getCurrentUTC() {
		Calendar cal = Calendar.getInstance(); // 获取当前的默认时间;
		int zoneOffset = cal.get(java.util.Calendar.ZONE_OFFSET); // 取得时间偏移量
		int dstOffset = cal.get(java.util.Calendar.DST_OFFSET); // 取得夏令时差
		cal.add(java.util.Calendar.MILLISECOND, -(zoneOffset + dstOffset)); // 从时间中扣除这些差量便取得UTC时间
		return cal.getTimeInMillis() / 1000;

	}

	// 根据UTC（精确到秒）时间获取当前时区的时间
	public static Date getLocaleDateByUTC(Long utc) {

		TimeZone timeZone = TimeZone.getDefault();
		int offset = timeZone.getOffset(utc * 1000); // 改时间为时区的偏移量（毫秒），如果该时区考虑
		return new Date(utc * 1000 + offset);
	}
	
	// 根据UTC（精确到秒）时间获取当前时区的时间
		public static Date getLocaleDateByCST(Long utc) {

			TimeZone timeZone = TimeZone.getDefault();
			int offset = timeZone.getOffset(utc * 1000); // 改时间为时区的偏移量（毫秒），如果该时区考虑
			return new Date(utc * 1000 + offset - 8 * 3600 * 1000);
		}
		
		// 根据UTC（精确到秒）时间以字符串格式获取当前时区的时间
		public static String getLocaleTimeStrByCST(Long utc) {
			Date date = UTCUtils.getLocaleDateByCST(utc);
			SimpleDateFormat format = new SimpleDateFormat("HH:mm");
			return format.format(date);
		}

	// 根据UTC(精确到秒获取指定时区的时间，如果该时区为空值，那么按主机默认时区转换)
	public static Date getDateByUTC(String timeZoneId, Long utc) {

		TimeZone timeZone = null;
		if (timeZoneId != null) {
			timeZone = TimeZone.getTimeZone(timeZoneId);
		} else {
			timeZone = TimeZone.getDefault();
		}

		int offset = timeZone.getOffset(utc * 1000);
		return new Date(utc * 1000 + offset);
	}

	// 根据UTC（精确到秒）时间以字符串格式获取当前时区的时间
	public static String getLocaleDateStrByUTC(Long utc) {
		Date date = UTCUtils.getLocaleDateByUTC(utc);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}

	// 根据UTC(精确到秒获取指定时区的时间，如果该时区为空值，那么按主机默认时区转换)
	public static String getDateStrByUTC(String timeZoneId, Long utc) {
		Date date = UTCUtils.getDateByUTC(timeZoneId, utc);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}

	// 根据时间类型字符串获取其time秒数（UTC时间,考虑时区的概念）
	public static Long getLongByDate(String timeZoneId, String date) {
		TimeZone timeZone = TimeZone.getTimeZone(timeZoneId);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Long time = format.parse(date).getTime();
			int offset = timeZone.getOffset(time);
			return (time - offset) / 1000;
		} catch (ParseException e) {
			e.printStackTrace();
			return 0l;
		}
	}

	public static Long getLongByDate1(String timeZoneId, String date) {
		TimeZone timeZone = TimeZone.getTimeZone(timeZoneId);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		try {
			Long time = format.parse(date).getTime();
			int offset = timeZone.getOffset(time);
			return (time - offset) / 1000;
		} catch (ParseException e) {
			e.printStackTrace();
			return 0l;
		}
	}

	// 根据时间类型字符串获取其time秒数（非UTC时间,不考虑时区的概念）
	public static Long getLongByDate(String date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			return format.parse(date).getTime() / 1000;
		} catch (ParseException e) {
			e.printStackTrace();
			return 0l;
		}
	}

	// 获取时间串
	public static String getDateStr() {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		return format.format(new Date());
	}

	// 根据秒数获取时间（不考虑时区的概念）
	public static String getDateByLong(Long times) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(new Date(times));
	}

	// 根据秒数获取时间（不考虑时区的概念）
	public static String getTimeByLong(Long times) {
		System.out.println("times:" + times);
		SimpleDateFormat format = new SimpleDateFormat("HH:mm");
		return format.format(new Date(times));
	}
	
	// 根据秒数获取时间（不考虑时区的概念）
		public static String getTimeCSTByLong(Long times) {
			System.out.println("times:" + times);
			SimpleDateFormat format = new SimpleDateFormat("HH:mm");
			return format.format(new Date(times));
		}

	public static void main(String[] args) throws SftpException, IOException {

		System.out.println(UTCUtils.getLocaleTimeStrByCST(new Long(1527140584)));
		
		DecimalFormat df = new DecimalFormat("0.00");

		System.out.println(df.format((float)23/(5*60)));
	}
}
