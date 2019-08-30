<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="com.shop.javabean.Storess"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="author" content="order by dede58.com"/>
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>详情页面</title>
</head>
<body>
<%-- <c:forEach var="score"  items="${requestScope.store}" >
	价格： <c:out value="${score.storeprice}"/>
</c:forEach> --%>
	<!-- start header -->
	<header>
			<div class="top center">
				<div class="left fl">
					<ul>
						<li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
						<li>|</li>
						<li><a href="">MIUI</a></li>
						<li>|</li>
						<li><a href="">米聊</a></li>
						<li>|</li>
						<li><a href="">游戏</a></li>
						<li>|</li>
						<li><a href="">多看阅读</a></li>
						<li>|</li>
						<li><a href="">云服务</a></li>
						<li>|</li>
						<li><a href="">金融</a></li>
						<li>|</li>
						<li><a href="">小米商城移动版</a></li>
						<li>|</li>
						<li><a href="">问题反馈</a></li>
						<li>|</li>
						<li><a href="">Select Region</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="right fr">
					<div class="gouwuche fr"><a href="">购物车</a></div>
					<div class="fr">
						<ul>
							<li><a href="" target="_blank">用户您好</a></li>
							<li>|</li>
							<li><a href="">消息通知</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!--end header -->

<!-- start banner_x -->
		<div class="banner_x center">
			<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl">
				<ul>
					<li><a href="">小米手机</a></li>
					<li><a href="">红米</a></li>
					<li><a href="">平板·笔记本</a></li>
					<li><a href="">电视</a></li>
					<li><a href="">盒子·影音</a></li>
					<li><a href="">路由器</a></li>
					<li><a href="">智能硬件</a></li>
					<li><a href="">服务</a></li>
					<li><a href="">社区</a></li>
				</ul>
			</div>
			<div class="search fr">
				<form action="" method="post">
					<div class="text fl">
						<input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
					</div>
					<div class="submit fl">
						<input type="submit" class="sousuo" value="搜索"/>
					</div>
					<div class="clear"></div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
<!-- end banner_x -->

	
	<!-- xiangqing -->
	<form action="./pages" method="post">
	<div class="xqing">
		<div class="neirong w">
			<div class="xiaomi6 fl">商品详情</div>
			<div class="clear"></div>
		</div>	
	</div>
	<!-- Page封装类里有list集合，service里将数据处理完将分页结果set给list集合，因此list集合里封装给着分页的结果 -->
	<c:forEach items="${stores.list}"  var="store">
	<%-- <c:forEach items="${requestScope.store}" var="store"> --%>
	<div class="jieshao mt20 w">
		<div class="left fl"><img src="${store.storeimg}"></div>
		<div class="right fr">
			<div class="h3 ml20 mt20"><c:out value="${store.storename}"></c:out></div>
			<div class="jianjie mr40 ml20 mt10"><c:out value="${store.storeinfo}"></c:out></div>
			<div class="jiage ml20 mt10"><c:out value="${store.storeprice}">元</c:out></div>
			<div class="xiadan ml20 mt20">
					<input class="jrgwc"  type="button" name="jrgwc" value="立即选购" />
					<input class="jrgwc" type="button" name="jrgwc" value="加入购物车" />
				
			</div>
		</div>
		<div class="clear"></div>	
	  </div>   
	</c:forEach>
	</form>
	
 <p>共有${stores.totalRecord}条记录, ${stores.totalpage}页  , 当前页：${stores.pageNum}</p>	 

<span class="page-prev">&lt;</span>
	<!-- <span class="page-prev">&lt;</span>
	<span class="page-current">
	如果为当前页，就没有上一页  -->
	
	<c:if  test="${sessionScope.pagebean.pageNum==1}">
          <a href="${pageContext.request.contextPath}/pages?pageNum=1">首页</a>
 	      <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
          <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
 	</c:if>
 	
 	
 	 <c:if  test="${sessionScope.pagebean.pageNum>1 && sessionScope.pagebean.pageNum<sessionScope.pagebean.totalpage}">
	       <a href="${pageContext.request.contextPath}/pages?pageNum=1">首页</a>
	       <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	       <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	       <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
    </c:if>
    
    
    <c:if  test="${sessionScope.pagebean.pageNum == sessionScope.pagebean.totalpage}">
	      <a href="${pageContext.request.contextPath}/pages?pageNum=1">首页</a>
          <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a> 
	      <a href="${pageContext.request.contextPath}/pages?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
	     
	 </c:if> 
      
    
    

 	</span>   
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
	   
	    
 	    
      
	
	</div> 
	

</body>
</html>