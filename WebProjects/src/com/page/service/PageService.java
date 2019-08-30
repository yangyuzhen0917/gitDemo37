package com.page.service;

import java.sql.SQLException;
import java.util.List;

import com.shop.dao.BookWitePage;
import com.shop.dao.StoressDao;
import com.shop.javabean.Storess;
import com.shopping.bean.PageBean;

public class PageService {
	
	public PageBean<Storess>findAllStoreeithPage(int pageNum,int pageSize){
		List<Storess>list=null;
		PageBean<Storess>page=null;
	
	 try {
		list=StoressDao.getAllstore();
	
	    int totalRecord=list.size();
	    page=new PageBean<Storess>(pageNum, pageSize, totalRecord);
	    //创建pageBean,当前页，每页显示条数，总条数
	    new PageBean<Storess>(pageNum,pageSize,totalRecord);
	    //获取pageBean对象中的startIndex;
	    int startindex=page.getStartIndex();
	    page.setList(BookWitePage.findBookPage(startindex, pageSize));
	 
	
	

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return page;
	

}
}