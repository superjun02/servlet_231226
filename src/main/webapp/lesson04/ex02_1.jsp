<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `new_user`";

	ResultSet resultSet = ms.select(selectQuery);
	%>
	<h1>회원 목록</h1>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (resultSet.next()) {
			%>
			<tr>
				<td><%= resultSet.getInt("id") %></td>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><%= resultSet.getString("introduce") %></td>
				<td><a href="/lesson04/ex02_delete?id=<%= resultSet.getInt("id") %>">탈퇴</a></td>
			</tr>
			<%
			}
			ms.disconnect();
			%>
		</tbody>
	</table>
</body>
</html>