<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.porder"
    import="Model.member"%>
<%
porder p = (porder)session.getAttribute("P");
member m = (member)session.getAttribute("M");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>finish</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="../title.jsp" %>
		<tr height=450>
			<td>
				<table width=450 align=center border=1>
					<tr>
						<td colspan=2 align=center>
						<h3>訂位成功，這是你的訂單細目</h3>
					<tr>
						<td width=100 align=center>客戶名：
						<td><%=m.getName() %>
					<tr>
						<td width=100 align=center>桌號：
						<td><%=p.getDesk() %>
					<tr>
						<td width=100 align=center>A餐：
						<td><%=p.getA() %>
					<tr>
						<td width=100 align=center>B餐：
						<td><%=p.getB() %>
					<tr>
						<td width=100 align=center>C餐：
						<td><%=p.getC() %>
					<tr>
						<td width=100 align=center>共：
						<td><%=p.getSum() %>元
					<tr>
						<td width=100 align=center>出餐地址：
						<td><%=m.getAddress() %>
					<tr>
						<td width=100 align=center>聯絡電話：
						<td><%=m.getPhone() %>
					<tr>
						<td width=100 align=center>行動：
						<td><%=m.getMobile() %>
					<tr>
						<td colspan=2 align=center>
						<a href="porder.jsp">回購物頁</a>
				</table>
		<tr height=50>
			<td align=center><%@include file="../end.jsp" %>
	</table>
</body>
</html>