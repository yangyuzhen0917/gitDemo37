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
import com.shopping.bean.PageBean;
import com.shopping.service.PageService;

public class shopServlet extends HttpServlet{
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         req.setCharacterEncoding("utf-8"); 
         resp.setCharacterEncoding("utf-8");
         resp.setContentType("text/html;charset=UTF-8");
         
         int pageNum=Integer.valueOf(req.getParameter("pageNum"));
         int pageSize=2;
         //service
         PageService  bs=new PageService();	
		 PageBean<Storess>  store=bs.findAllBookwithPage(pageNum, pageSize);
         
		 /*System.out.println(store.getStartIndex());
		 System.out.println(store.getTotalRecord());*/
		 req.getSession().setAttribute("stores",store);
		 req.getRequestDispatcher("/xqing.jsp").forward(req, resp);
	}@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}

}
