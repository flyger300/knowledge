package com.cn.za.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import org.apache.log4j.Logger;

public class MysqlUtils {
	static Logger logs = Logger.getRootLogger();
	public static final ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
	private static PropertiesUtils pu = PropertiesUtils.getIntance();
	
	public static Connection getConnection() throws NamingException,
			SQLException {
		
		Connection conn = tl.get();
		if (conn == null || conn.isClosed()) {
			String driver = pu.getProperty("mysql.driver");
			String url = pu.getProperty("mysql.url");
			String user = pu.getProperty("mysql.user");
			String passwd = pu.getProperty("mysql.password");				
			
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
	
		try {
			if(rs!=null) rs.close();
			if(stm!=null) stm.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			logs.error(e,e);
			throw e;
		} finally {
			tl.set(null);//new SQLException(" ThreadLocal<Connection> set(null) Exception ");
        }
	}

}
