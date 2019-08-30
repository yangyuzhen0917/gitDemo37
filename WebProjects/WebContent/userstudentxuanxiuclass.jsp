<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:if test="${empty re }">
<c:redirect url="login.jsp"  />
</c:if>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>

		<div class="panel admin-panel">
			<div class="panel-head" style="font-size:16px;">
				<strong class="icon-reorder"> 选修课列表</strong> (说明：选修课在2018年11月8日14:00之后系统关闭)
			     
			</div>
		
			<table class="table table-hover text-center" style="font-size:16px;" >
			
				<tr>
					<th style="text-align:left; padding-left:20px;">序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</th>
					<th width="12%">课程名称</th>
					<th width="12%">代课老师</th>
					<th width="12%">课程类型</th>
					<th width="12%">课程学分</th>
					<th width="10%">选课人数上限</th>
					<th width="10%">当前选课人数</th>
					<th width="15%">上课地点</th>
					<th width="30%">选择选修课程</th>
				</tr>
				<volist name="list" id="vo"> 
				
				
				<c:forEach var="course" items="${COURSE}" varStatus="status"  >
				<tr>
					<td>${status.count}</td>
					<td>${course.cname}</td>
					<td>${course.teacher.tname}</td>
					<td style="color:blue;">${course.ctype}</td>
					<td>${course.ccredit}</td>
					<td>${course.cmax}</td>
					<td>${course.cprecid}</td>
					<td>${course.cnote}</td>
					<td>
					<a  href="coursexuanxiucid.action?cid=${course.cid}"  class="button bg-main icon-check-square-o"  
                         style="font-size: 20px;"> 添加</a>
				</tr>
				</c:forEach>
				
			</table>
		</div>
	
	
</body>

<script type="text/javascript">



</script>
</html>