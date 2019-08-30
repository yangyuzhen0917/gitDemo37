package com.user.connectionutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectionutils {
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getconnection() {
		Connection conn=null;
		String username="root";
		String password="yy921012";
		String path="jdbc:mysql://localhost:3306/phone?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT&useSSL=false";
		try {
			conn=DriverManager.getConnection(path,username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
