package com.user.javabean;


import com.user.connectionutils.Connectionutils;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserIMP implements SeachUser{

	@Override
	public void register(User user) {
		Connection conn=Connectionutils.getconnection();
		PreparedStatement pre=null;
		try {
			pre=conn.prepareStatement("insert into xmuserinfo(username,password,phonenumber)value(?,?,?)");
			pre.setString(1, user.getUsername());
			pre.setString(2, user.getPassword());
			pre.setString(3, user.getPhonenumber());
			pre.execute();
			System.out.println("×¢²á³É¹¦");
			pre.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<User> getall(){
		Connection conn=Connectionutils.getconnection();
		Statement sta=null;
		ResultSet result=null;
		List<User> list=new ArrayList<>();
		try {
			sta=conn.createStatement();
			result=sta.executeQuery("select username,password,phonenumber from xmuserinfo");
			while(result.next()) {
				User user=new User();
				user.setUsername(result.getString("username"));
				user.setPassword(result.getString("password"));
				user.setPhonenumber(result.getString("phonenumber"));
				list.add(user);
			}
			sta.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}

}
