<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib   prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>详情页面</title>
		<style>
			h1,h2{text-align: center;}
			table{margin-left: 100px;}
			td{width: 260px; height: 50px; padding-left: 30px;}
			td img{width: 100%; height: 800%; }
			#num{width: 35px; text-align: center;}
		</style>
	</head>
	<body bgcolor="lightblue">
		<h1>手机详情</h1>
		<hr size="5" color="green" />
		
		<form action="shopServlet"  method="post">
			<table>
			   <c:forEach  var="storelist"  items="${storelist}">
				  <tr>
					<td rowspan="8">
						<img src="${storelist.storeimg}" />
					</td>
					<td>
						<input type="hidden" name="bid" value="${storelist.storeid}" />
					</td>
				</tr>
				<tr>
					<td>手机名: ${storelist.storename}</td>
				</tr>
				<tr>
					<td>价格: ${storelist.storeprice}</td>
				</tr>
				
				<tr>
					<td>简介: ${storelist.storeinfo} </td>
				</tr>
				
			
				<tr>
					
					<td>
						数量: <input id="num" type="number" name="num" min="1" value="1" >本
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="加入购物车" />
					</td>
				</tr> 
				</c:forEach>
				
				
			</table>
			
			<center><a href="showcarajax.jsp">查看购物车</a></center>
		 
	</form>
		
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> 
		
	  	
	 
	  	
	  	
		
	</body>
	
	
	
	
</html>

