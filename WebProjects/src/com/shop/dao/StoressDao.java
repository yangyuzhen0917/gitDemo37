package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.shop.javabean.Storess;
import com.user.connectionutils.Connectionutils;

//查询所有商品的详情
public class StoressDao {
	
	public static List<Storess>getAllstore() throws SQLException{
		Connection conn=null;
		PreparedStatement pra=null;
		ResultSet rs=null;
		Storess store=null;
		List<Storess> list=new ArrayList<>();
	
		try {
			conn=Connectionutils.getconnection();
			pra=conn.prepareStatement("select storeid,storename,storeprice,storecount,storeinfo,storeimg from stores");
			rs=pra.executeQuery();
			while(rs.next()){
			     store=new Storess();
			     store.setStoreid(rs.getInt("storeid"));
			     store.setStorename(rs.getString("storename"));
			     store.setStoreprice(rs.getDouble("storeprice"));
			     store.setStorecount(rs.getInt("storecount"));
			     store.setStoreinfo(rs.getString("storeinfo"));
			     store.setStoreimg(rs.getString("storeimg"));
			     list.add(store);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			rs.close();
			pra.close();
			conn.close();
		}
		
		return list; 
	
		
	}

}
