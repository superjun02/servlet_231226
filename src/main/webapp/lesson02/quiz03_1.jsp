<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
<!-- bootstrap CDN Link -->
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
</head>
<body class="container">
	<%
	int h = Integer.valueOf(request.getParameter("height"));
	double w = Double.valueOf(request.getParameter("weight"));

	double bmi = w / ((h / 100.0) * (h / 100.0));
	String status = null;

	if (bmi >= 31) {
		status = "비만";
	} else if (bmi >= 26) {
		status = "과체중";
	} else if (bmi >= 21) {
		status = "정상";
	} else {
		status = "저체중";
	}
	%>
	<h3>BMI 측정 결과</h3>
	<h1>
		당신은 <span class="text-info"><%=status%></span> 입니다.
	</h1>
	<small>BMI 수치: <%= bmi %></small>
</body>
</html>