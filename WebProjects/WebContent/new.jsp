<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop.javabean.Storess"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
Hello
	<table>
		<c:forEach  var="st"  items="${requestScope.store}" >
			<tr>
	 			 <td>姓名</td>
			</tr>
			<tr>
				 <td>${st.storename}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>