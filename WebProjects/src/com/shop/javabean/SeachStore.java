package com.shop.javabean;

import java.util.List;


public interface SeachStore {
	public List<Storess> getall();
	public List<Storess> pageResult(int startindex, int pagesize);
}
