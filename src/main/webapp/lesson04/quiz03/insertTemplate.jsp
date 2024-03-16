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

.input-box {
	margin-left: 40px;
	margin-right: 40px;
	margin-top: 40px;
	height: 400px;
}

.url-input {
	margin-right: 96px;
}
</style>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<jsp:include page="insert.jsp" />
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>