<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty re }">
<c:redirect url="login.jsp"  />
</c:if>

<!DOCTYPE html>
<html lang="zh-cn">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>学生选课管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" /><span style="color:red;font-weight: 800">学生选课</span>管理中心</h1>
  </div>
  <div class="head-l"> &nbsp;&nbsp;<a class="button button-little bg-red" href="resetsession.action"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav" style="font-size:16px">
  <div class="leftnav-title" style="font-size:18px"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2 style="font-size:18px"><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="selectStudentcenter.action" target="right"><span class="icon-caret-right"></span>个人中心</a></li>
    <li><a href="userstudentpass.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
  </ul>   
  <h2 style="font-size:18px"><span class="icon-pencil-square-o"></span>课程管理</h2>
  <ul >
    <li><a href="seclectmustclass.action" target="right"><span class="icon-caret-right"></span>必修课</a></li>
    <li><a href="seclectxuanxiuclass.action" target="right"><span class="icon-caret-right"></span>选修课</a></li>        
    <li><a href="courseallclass.action" target="right"><span class="icon-caret-right"></span>我的课程</a></li>        
  </ul>  
</div>


	<script type="text/javascript">
		$(function(){
		  $(".leftnav h2").click(function(){
			  $(this).next().slideToggle(200);
			  $(this).toggleClass("on"); 
		  })
		  $(".leftnav ul li a").click(function(){
			    $("#a_leader_txt").text($(this).text());
		  		$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
		  })
		});
	</script>
<ul class="bread">
  <li><a href="page.jsp" target="right" class="icon-home"> 首页</a></li>
  <li><a href="" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="page.jsp" name="right" width="100%" height="100%"></iframe>
</div>


</body>

</html>