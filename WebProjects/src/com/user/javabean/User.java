package com.user.javabean;

public class User {
	private int userid;
	private String username;
	private String password;
	private String phonenumber;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public User() {
		super();
	}
	public User(int userid, String username, String password, String phonenumber) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.phonenumber = phonenumber;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", phonenumber="
				+ phonenumber + "]";
	}
	
}
