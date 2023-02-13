<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.porder"
    import="Dao.porder.implPorder"
    import="java.util.List"%>
<%
List<porder> l = new implPorder().queryAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="../title.jsp" %>
		<tr height=450>
			<td>
			<form action="../deletePorderController" method="post">
				<table width=500 align=center border=1>
					<tr align=center>
						<td align=center>
						<h4>刪除訂單</h4>
						ID:<input type="text" name="id" size=3>
						
						<input type="submit" value="ok">
				</table>		
			</form>
			<hr>
			<table width=500 align=center border=1>
					<tr align=center>
						<td>ID<td>桌號<td>A餐<td>B餐<td>C餐<td>金額 
					<%
						for(porder p:l)
						{
							out.println("<tr align=center><td>"+p.getId()+
									"<td>"+p.getDesk()+
									"<td>"+p.getA()+
									"<td>"+p.getB()+
									"<td>"+p.getC()+
									"<td>"+p.getSum());
						}
					%>
					<tr>
						<td colspan=6 align=center>
						<a href="porder.jsp">回購物管理頁</a>
				</table>
		<tr height=50>
			<td align=center><%@include file="../end.jsp" %>
	</table>
</body>
</html>