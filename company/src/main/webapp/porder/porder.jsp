<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>porder</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="../title.jsp" %>
		<tr height=450>
			<td>
			<table width=200 align=center border=1>
				<tr><td><a href="addPorder.jsp">1)新增</a>
				<tr><td><a href="query.jsp">2)查詢</a>
				<tr><td><a href="update.jsp">3)修改</a>
				<tr><td><a href="delete.jsp">4)刪除</a>
			</table>
			
		<tr height=50>
			<td align=center><%@include file="../end.jsp" %>
	</table>
</body>
</html>