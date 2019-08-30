<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/WebProjects/shop" method="post">

<table border="2px" style="border:solid; color: blue;">
<tr>
<td>手机名</td>
<td>产品</td>
</tr>

<c:forEach items="${requestScope.store}" var="store">

  <tr>
  <td>${store.storename}</td>
  <td>${store.storeprice}</td>
  </tr>
</c:forEach>
</table>

<input type="submit" value="提交">

</table>

</form>

</body>
</html>