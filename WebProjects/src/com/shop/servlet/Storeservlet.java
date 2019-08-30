package com.shop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.javabean.StoreIMP;
import com.shop.javabean.Storess;

public class Storeservlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		super.init();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8"); 
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
	
        StoreIMP storeimp=new StoreIMP();
        List<Storess> list=storeimp.getall();
        HttpSession session=req.getSession();
        session.setAttribute("list", list);
	
		 req.getRequestDispatcher("/index.jsp").forward(req, resp);

	
	
   
	
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	         doPost(req, resp);
	}
	@Override
	public void destroy() {
		super.destroy();
	}
}
