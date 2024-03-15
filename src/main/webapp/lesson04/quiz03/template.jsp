<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	height: 100px
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

a {
	font-size: 18px;
}

a:hover {
	color: white;
}
.thumbnailBox {
    width: 350px;
    height: 260px;
    border: solid;
    border-color: #FF7F50;
    margin: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<header class="color-orange">
			<div class="d-flex align-items-center justify-content-center h-100">
				<h1 class="white-font-bold">HONG당무 마켓</h1>
			</div>
		</header>
		<nav class="color-orange">
			<div class="h-100">
				<ul class="nav nav-fill">
					<li class="nav-item col-4"><a href="#"
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
				<div class="thumbnailBox"></div>
				<div class="thumbnailBox"></div>
				<div class="thumbnailBox"></div>
				<div class="thumbnailBox"></div>
				<div class="thumbnailBox"></div>
				<div class="thumbnailBox"></div>
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