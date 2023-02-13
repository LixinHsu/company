<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addPorder</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><%@include file="../title.jsp" %>
		<tr height=450>
			<td>
				<form action="confirm.jsp" method="post">
					<table width=500 align=center border=1>
						<tr>
							<td colspan=3 align=center>
							<h3>商品訂購</h3>
						<tr>
							<td colspan=3>
							桌號：
							<select name="desk">
								<option value="A桌">A桌
								<option value="B桌">B桌
								<option value="C桌">C桌
								<option value="D桌">D桌
								<option value="E桌">E桌
							</select>
						<tr align=center>
							<td>
								<font size=4>A餐</font><br>
								<img alt="1.png" src="../pic/1.png"><br>
								<select name="A">
									<option value="0">0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
								</select>
							<td>
								<font size=4>B餐</font><br>
								<img alt="2.jpg" src="../pic/2.jpg"><br>
								<select name="B">
									<option value="0">0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
								</select>
							<td>
								<font size=4>C餐</font><br>
								<img alt="3.jpg" src="../pic/3.jpg"><br>
								<select name="C">
									<option value="0">0
									<option value="1">1
									<option value="2">2
									<option value="3">3
									<option value="4">4
									<option value="5">5
									<option value="6">6
								</select>
						<tr>
							<td colspan=3 align=center>
							<input type="submit" value="ok">				
					</table>
				</form>
				
		<tr height=50>
			<td align=center><%@include file="../end.jsp" %>
	</table>
</body>
</html>