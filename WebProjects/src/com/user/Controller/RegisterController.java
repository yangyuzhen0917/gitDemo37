package com.user.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.javabean.UserIMP;
import com.user.javabean.User;

public class RegisterController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void init() throws ServletException {
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		
		req.setCharacterEncoding("utf-8");
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String repassword=req.getParameter("repassword");
		String phonenumber=req.getParameter("phonenumber");
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPhonenumber(phonenumber);
		boolean bools=false;
		if(password.equals(repassword)) {
			bools=true;
		}else {
			out.print("<script>alert('�����������벻һ�£�������')</script>");
		}
		UserIMP users=new UserIMP();
		List<User> list=users.getall();
		boolean bool=false;
		for(int i=0;i<list.size();i++) {
			if(user.getUsername().equals(list.get(i).getUsername())) {
				bool=true;
				out.print("<script>alert('�û����ѱ�ռ��')</script>");
			}
			if(user.getPhonenumber().equals(list.get(i).getPhonenumber())) {
				bool=true;
				out.print("<script>alert('�ֻ����ѱ�ռ��')</script>");
			}
		}
		if((bools==true && bool==true)||(bools==false)) {
			out.print("<script>alert('ע��ʧ�ܣ�������ע�ᣡ');location.href='/WebProjects/register.jsp'</script>");
		}
		if(bools==true && bool==false){
			users.register(user);
			out.print("<script>alert('ע��ɹ���');location.href='/WebProjects/login.jsp'</script>");
		}
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
	}
	@Override
	public void destroy() {
		super.destroy();
	}
}
