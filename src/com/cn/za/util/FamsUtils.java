/*
 * 类名：NTC
 * 版本信息：1.0
 * 日期：2012.3.20
 * 版权信息 1.0
 * 开发者:nansong
 */
package com.cn.za.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

public class FamsUtils {

	private static final ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
	private static PropertiesUtils pu = PropertiesUtils.getIntance();

	public static Connection getConnection(String driver,String url,String user,String pass) throws NamingException,
			SQLException {
		
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			return DriverManager.getConnection(url, user, pass);
	}

	public static Connection getConnection() throws NamingException,
			SQLException {
		Connection conn = tl.get();
		if (conn == null || conn.isClosed()) {
			String driver = pu.getProperty("fams.driver");
			String url = pu.getProperty("fams.url");
			String user = pu.getProperty("fams.user");
			String passwd = pu.getProperty("fams.password");
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, user, passwd);
			tl.set(conn);
		}
		return conn;
	}

	public static void release(Connection conn, Statement stm, ResultSet rs)
			throws SQLException {
		if (stm != null) {
			try {
				// stm.close();
			} catch (Exception e) {
				throw new SQLException();
			} finally {
				stm.close();
			}
		}
		if (rs != null) {
			try {
				// rs.close();
			} catch (Exception e) {
				throw new SQLException();
			} finally {
				rs.close();
			}
		}
		if (conn != null) {
			try {
				// conn.close();
				tl.set(null);
			} catch (Exception e) {
				throw new SQLException();
			} finally {
				conn.close();
				tl.set(null);
			}
		}
	}

}
