<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="title.jsp" %>
		<tr height=450>
			<td>
				<form action="LoginController" method="post">
					<table width=400 align=center border=1>
						<tr>
							<td colspan=2 align=center><h3>會員登入</h3>
						<tr>
							<td align=center>帳號
							<td><input type="text" name="username">
						<tr>
							<td align=center>密碼
							<td><input type="password" name="password">
						<tr>
							<td colspan=2 align=center>
							<input type="submit" value="登入">
					</table>
				</form>
		<tr height=50> 
			<td align=center><%@include file="end.jsp" %>
	</table>
</body>
</html>