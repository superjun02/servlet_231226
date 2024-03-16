<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<style>
header {
	height: 90px
}

nav {
	height: 80px;
}

footer {
	height: 50px;
}

.white-font-bold {
	color: white;
	font-weight: bold;
	a: hover: none;
}

.nav-fill {
	height: 100%;
}

.nav-link {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.color-orange {
	background-color: #FF7F50;
}
.text-orange {
	color: #FF7F50;
}

a {
	font-size: 18px;
}

a:hover {
	color: white;
}

.thumbnailBox {
	width: 350px;
	height: 290px;
	border: solid;
	border-color: #FF7F50;
	margin: 10px;
}
.thumbnailBox:hover {
	background-color: #D8D8D8;
}
.imgBox {
	width: 330px;
	height: 180px;
}
</style>
</head>
<body>
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.`id` = B.`sellerId` order by B.`id` desc";

	ResultSet resultSet = ms.select(selectQuery);
	%>
	<div class="container">
		<header class="color-orange">
			<div class="d-flex align-items-center justify-content-center h-100">
				<h1 class="white-font-bold">HONG당무 마켓</h1>
			</div>
		</header>
		<nav class="color-orange">
			<div class="h-100">
				<ul class="nav nav-fill">
					<li class="nav-item col-4"><a href="/lesson04/quiz03/template.jsp"
						class="nav-link white-font-bold">리스트</a></li>
					<li class="nav-item col-4"><a href="#"
						class="nav-link white-font-bold">물건 올리기</a></li>
					<li class="nav-item col-4"><a href="#"
						class="nav-link white-font-bold">마이 페이지</a></li>
				</ul>
			</div>
		</nav>
		<section>
			<div class="d-flex flex-wrap py-3">
				<%
				while (resultSet.next()) {
				%>
				<div class="thumbnailBox">
					<%
					if (resultSet.getString("B.picture") == null) {
					%>
					<div class="m-2 d-flex justify-content-center">
						<div class="imgBox d-flex justify-content-center align-items-center">
							<h4 class="text-secondary">이미지 없음</h4>
						</div>
					</div>
					<%
					} else {
					%>
					<div class="m-2 d-flex justify-content-center">
						<img class="imgBox" alt="물품이미지-<%=resultSet.getInt("B.id")%>"
							src="<%=resultSet.getString("B.picture")%>">
					</div>
					<%
					}
					%>
					<div class="mx-2">
						<h5>[<%= resultSet.getString("B.title") %>]</h5>		
					</div>
					<div class="mx-2 text-secondary">
						<%= resultSet.getInt("B.price") %>원
					</div>
					<div class="mx-2 text-orange">
						<b><%= resultSet.getString("A.nickname") %></b>
					</div>
				</div>
				<%
				}
				ms.disconnect();
				%>
			</div>
		</section>
		<footer>
			<div class="h-100 d-flex justify-content-center align-items-center">
				<small>Copyright 2024. HONG All Rights Reserved.</small>
			</div>
		</footer>
	</div>
</body>
</html>