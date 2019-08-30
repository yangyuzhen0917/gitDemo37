package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Result;
import com.shop.javabean.Storess;
import com.user.connectionutils.Connectionutils;

public class BookWitePage {
	public static List<Storess>findBookPage(int StartIndex,int pageSize){
		Connection conn=null;
		PreparedStatement pra=null;
		ResultSet rs=null;
		Storess storess=null;
		List<Storess>storelist=new ArrayList<Storess>();
		
		try {
			conn=Connectionutils.getconnection();
			pra=conn.prepareStatement("select storeid,storename,storeprice,storecount,storeinfo,storeimg from stores");
			pra.setInt(1, StartIndex);
			pra.setInt(2, pageSize);
			rs=pra.executeQuery();
			while(rs.next()){
				 Storess store = new Storess();
				 store.setStoreid(rs.getInt("storeid"));
			     store.setStorename(rs.getString("storename"));
			     store.setStoreprice(rs.getDouble("storeprice"));
			     store.setStorecount(rs.getInt("storecount"));
			     store.setStoreinfo(rs.getString("storeinfo"));
			     store.setStoreimg(rs.getString("storeimg"));
			     storelist.add(store);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return storelist;
		
	}

}
