package com.shopping.service;

import java.sql.SQLException;
import java.util.List;

import com.shop.dao.BookWitePage;
import com.shop.dao.StoressDao;
import com.shop.javabean.StoreIMP;
import com.shop.javabean.Storess;
import com.shopping.bean.PageBean;

public class PageService {
	public  PageBean<Storess> findAllBookwithPage(int pageNum,int pageSize){
		List<Storess>  list=null;
		PageBean<Storess>  pages=null;
	    StoreIMP imp=new StoreIMP();
		try {
			 list=StoressDao.getAllstore();
			 int totalrecord=list.size();
			 //����pageBean,��ǰҳ��ÿҳ��ʾ������������
			 pages=new PageBean<Storess>(pageNum, pageSize, totalrecord);
			 //��ȡpageBean�����е�startIndex;
			 int startindex=pages.getStartIndex();
			 List<Storess> lists=imp.pageResult(startindex, pageSize);
			 pages.setList(lists);
			 	 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		    return pages;
		
		
	}

}
