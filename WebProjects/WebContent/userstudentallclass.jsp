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
				<strong class="icon-reorder"> 我的课程列表&nbsp;&nbsp;</strong>
			     
			</div>
		
			<table class="table table-hover text-center" style="font-size:16px;" >
			
				<tr>
					<th style="text-align:left; padding-left:20px;">序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</th>
					<th width="15%">课程名称</th>
					<th width="15%">代课老师</th>
					<th width="15%">课程类型</th>
					<th width="13%">课程学分</th>
					<th width="13%">课程成绩</th>
					<th width="13%">上课地点</th>
					<th width="45%">操作(只能撤回选修课)</th>
				</tr>
				<volist name="list" id="vo"> 
				
				
				<c:forEach var="list" items="${LIST}" varStatus="status"  >
				<c:forEach var="elect" items="${list.elect}"   >
				
				<tr>
					<td>${status.index+1}</td>
					<td>${list.cname}</td>
					<td>${list.teacher.tname}</td>
					<td>
					   <c:if test="${list.ctype eq '选修课'}">
					       <span style="color:blue;">选修课</span>
					   </c:if>
					
					   <c:if test="${list.ctype eq '必修课'}">
					       <span style="color:red;">必修课</span>
					   </c:if>
					</td>
					<td>${list.ccredit}</td>
					<td>${elect.score}</td>
					<td>${list.cnote}</td>
					<td>
					   <c:if test="${list.ctype eq '选修课'}">
					         <a  href="deletectype.action?cid=${list.cid}"  class="button bg-main icon-check-square-o"   
                                 style="font-size: 20px;"> 可撤回</a>
					   </c:if>
					   
					   
					  <c:if test="${list.ctype eq '必修课'}">
					      <input type="button"   value="不能删"  style="background: #DDDDDD;color:#AAAAAA;font-size:20px;width: 145px;height: 40px;"> 
					  </c:if> 
					   
					</td>
				</tr>
				</c:forEach>
				</c:forEach>
				
			</table>
		</div>
	
	
</body>

<script type="text/javascript">
//判断选择3门选修课，并拼接课程cid
function checkcid(){
var a=[];
var cids="";
   a=document.getElementsByName("chec");
for(var i=0;i<a.length;i++){
   if(a[i].checked==true){
     cids+= document.getElementsByName("chec")[i].value+",";
   }
}
    window.location.href="coursecid.action?cid="+cids;

}


</script>
</html>