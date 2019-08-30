package com.user.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.javabean.StoreIMP;

import com.shop.javabean.Storess;
import com.user.javabean.User;
import com.user.javabean.UserIMP;

public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		
		UserIMP users=new UserIMP();
		StoreIMP stores=new StoreIMP();
		List<Storess> store=stores.getall();
		List<User> list=users.getall();
		
		boolean bool=false;
		for(int i=0;i<list.size();i++) {
			if(user.getUsername().equals(list.get(i).getUsername())) {
				if(user.getPassword().equals(list.get(i).getPassword())) {
					bool=true;
				}
			}
			if(user.getUsername().equals(list.get(i).getPhonenumber())) {
				if(user.getPassword().equals(list.get(i).getPassword())) {
					bool=true;
				}
			}
		}
		if(bool==true) {
			 req.getRequestDispatcher("/hello").forward(req, resp);

			//out.print("<script>alert('登录成功！');location.href='/WebProjects/xqing.jsp'</script>");
		}else {
			out.print("<script>alert('用户名或密码错误，请重试！');location.href='/WebProjects/login.jsp';</script>");
		}
		
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
	}
	@Override
	public void destroy() {
		super.destroy();
	}
}
