package com.shop.javabean;

import com.user.connectionutils.Connectionutils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.javabean.*;

public class StoreIMP implements SeachStore{
	@Override
	public List<Storess> getall() {
		Connection conn=Connectionutils.getconnection();
		Statement sta=null;
		ResultSet result=null;
		List<Storess> list=new ArrayList<>();
		try {
			sta=conn.createStatement();
			result=sta.executeQuery("select storeid,storename,storeprice,storecount,storeinfo,storeimg from stores");
			while(result.next()) {
				Storess store=new Storess();
				store.setStoreid(result.getInt("storeid"));
				store.setStorename(result.getString("storename"));
				store.setStoreprice(result.getDouble("storeprice"));
				store.setStorecount(result.getInt("storecount"));
				store.setStoreinfo(result.getString("storeinfo"));
				store.setStoreimg(result.getString("storeimg"));
				list.add(store);
			}
			sta.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Storess> pageResult(int startindex, int pagesize) {
		Connection conn=null;
		PreparedStatement pre=null;
		ResultSet sta=null;
		conn=Connectionutils.getconnection();
		List<Storess> storelist=new ArrayList<>();
		try {
			 pre=conn.prepareStatement("select storeid,storename,storeprice,storecount,storeinfo,storeimg from stores limit ?,?; ");
			 pre.setInt(1, startindex);
			 pre.setInt(2, pagesize);
			 sta=pre.executeQuery();
			 while(sta.next()) {
				    Storess store=new Storess();
					store.setStoreid(sta.getInt("storeid"));
					store.setStorename(sta.getString("storename"));
					store.setStoreprice(sta.getDouble("storeprice"));
					store.setStorecount(sta.getInt("storecount"));
					store.setStoreinfo(sta.getString("storeinfo"));
					store.setStoreimg(sta.getString("storeimg"));
					storelist.add(store);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return storelist;
	}

	
	}



