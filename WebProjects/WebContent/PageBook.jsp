<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib   prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	
	
	
%>


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
		
		
 <style type="text/css">
	.page-normal a{
		border: 1px solid #ff6500;
		padding: 5px 7px;
		color: #ff6500;
		margin-left: 20px;
		text-decoration: none;
	}
	
	.page-normal a:hover{
		background-color: #ffbe94;
	}
	
	.page-normal{
		color: #ff6500;
		text-align: center;
	}
	
	.page-normal .page-current{
		color: #ffffff;
		background-color: #ff6500;
	}
	
	.page-normal .page-prev{
		color: #ffe3c6;
	}
	
	.page-normal a, .page-normal a:hover, .page-normal .page-prev, .page-normal .page-current{
		border: 1px solid #ff6500;
		padding: 5px 7px;
	}
	
</style> 
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
 	function tocar(pageNum){
 		alert(pageNum);
 		$.ajax({
		    type:'POST',
			url: "/Shopping/AddBookToCarServlet",
			data:{
				bookId: book_id
			},
			success : function(result) {
				alert(result);
				window.location.href="showcarajax.jsp";
			},
			error : function() {
				alert("发生了错误");

			}

		}); 
 	}
 	</script>
		
		
	</head>
	<body bgcolor="lightblue">
		<h1>图书详情</h1>
		<hr size="5" color="green" />
		
			<table>
			   <c:forEach  var="booklist"  items="${pagebean.list}">
				  <tr>
					<td rowspan="8">
						<img src="${booklist.book_img}" />
					</td>
					<td>
						<input type="hidden" name="bid"  value="${booklist.book_id}" />
					</td>
				</tr>
				<tr>
					<td>书名: ${booklist.book_name}</td>
				</tr>
				<tr>
					<td>作者: ${booklist.book_author}</td>
				</tr>
				
				<tr>
					<td>简介: ${booklist.book_describe}</td>
				</tr>
				
				<tr>
					<td>类型:${booklist.book_type}</td>
				</tr>
				<tr>
					<td>价格: ${booklist.book_price}元</td>
				</tr>
				
				<tr>
					<td>出版社: ${booklist.book_publisher} </td>
				</tr>
				
				<tr>
					<td>
						数量: <input id="num" type="number" name="num" min="1" value="1" >本
					</td>
				</tr>
				<tr>
				
				    <%-- <td>
					    <input  type="button"  onclick="tocar(${booklist.book_id})">
					</td> --%>
					
					
					<td>
						<input type="button" value="加入购物车"  onclick="tocar(${booklist.book_id})"/>
						
					</td>
					
					
					
					
				</tr> 
				
				</c:forEach>

				 
			</table>
		 
		
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> 
		
		
<p>共有${pagebean.totalRecord}条记录, ${pagebean.totalpage}页  , 当前页：${pagebean.pageNum}</p>
		
<div class="page-normal">
	<span class="page-prev">&lt;</span>
	<span class="page-current">
	<!-- 如果为当前页，就没有上一页 -->
	
	   <a href="${pageContext.request.contextPath}/PageBook?pageNum=1">首页</a>
	        <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1"  var="i">
	         <c:if test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/PageBook?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach>
	      <a href="${pageContext.request.contextPath}/PageBook?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	      

	            
	            
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	    <!-- 如果当前页不是首页也不是最后一页，则有上一页和下一页 -->
	    <c:if  test="${sessionScope.pagebean.pageNum>1 && sessionScope.pagebean.pageNum<sessionScope.pagebean.totalpage}">
	       <a href="${pageContext.request.contextPath}/PageBook?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	       <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1"  var="i">
	         <c:if test="${sessionScope.pagebean.pageNum==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	           <a href="${pageContext.request.contextPath}/PageBook?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	          <a href="${pageContext.request.contextPath}/PageBook?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	    </c:if>
	    
	    
	    
	    <!--如果是最后一页，则只有上一页。没有下一页  -->
	   
	     
	   
	    <c:if  test="${sessionScope.pagebean.pageNum == sessionScope.pagebean.totalpage}">
	      <a href="${pageContext.request.contextPath}/PageBook?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	      <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1" var="i">
	         <c:if  test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/PageBook?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	    </c:if>    
	    
	    <a href="${pageContext.request.contextPath}/PageBook?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
	     
	</span>
	
	</div> 
	
	
	</body>
	
	
	
	
</html>

