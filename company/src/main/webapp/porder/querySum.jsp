<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Dao.porder.implPorder"
    import="Model.porder"
    import="java.util.List"%>    
<%
String Start = request.getParameter("start");
String End = request.getParameter("end");

List<porder> l = null;

if(Start!=null && Start!="" && End!=null && End!="")
{
	int S = Integer.parseInt(Start);
	int E = Integer.parseInt(End);
	l = new implPorder().querySum(S, E);
}
else
{
	l = new implPorder().queryAll();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>querySum</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="../title.jsp" %>
		<tr height=450>
			<td>
			<form action="querySum.jsp" method="post">
				<table width=500 align=center border=1>
					<tr align=center>
						<td>
						金額從
						<input type="text" name="start" size=3>
						到
						<input type="text" name="end" size=3>
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
						out.println("<tr><td>"+p.getId()+
								"<td>"+p.getDesk()+
								"<td>"+p.getA()+
								"<td>"+p.getB()+
								"<td>"+p.getC()+
								"<td>"+p.getSum());
					}
				%>
				
				<tr>
					<td colspan=6 align=center>
					<a href="porder.jsp">回購物頁</a>
				</table>
		<tr height=50>
			<td align=center><%@include file="../end.jsp" %>
	</table>
</body>
</html>