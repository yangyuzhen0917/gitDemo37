package com.shopping.bean;

import java.util.List;

public class PageBean<T> {
	
	private int pageNum;//从当前页，从请求页面传过来的
	private int pageSize;//每页显示的数据
	private int totalRecord;//总的记录时
	private int totalpage;//总页数，通过totalRecord和pagesize计算可以分多少页
	private int startIndex;//开始索引
	
	//将要显示的数据放在list集合中
	private List<T> list;
	
	private int start;
	private int end;
	
	public PageBean(int pageNum,int pageSize,int totalRecord){
		this.pageNum=pageNum;
		this.pageSize=pageSize;
		this.totalRecord=totalRecord;
		
		//总页数
		if(totalRecord%pageSize==0){
			this.totalpage=totalRecord/pageSize;
		}else{
			this.totalpage=totalRecord/pageSize+1;
		}
	    this.startIndex=(pageNum-1)*pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public PageBean(int pageNum, int pageSize, int totalRecord, int totalpage, int startIndex, List<T> list, int start,
			int end) {
		super();
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.totalRecord = totalRecord;
		this.totalpage = totalpage;
		this.startIndex = startIndex;
		this.list = list;
		this.start = start;
		this.end = end;
	}

	public PageBean() {
		super();
	}

	@Override
	public String toString() {
		return "PageBean [pageNum=" + pageNum + ", pageSize=" + pageSize + ", totalRecord=" + totalRecord
				+ ", totalpage=" + totalpage + ", startIndex=" + startIndex + ", list=" + list + ", start=" + start
				+ ", end=" + end + "]";
	}
	
}
	