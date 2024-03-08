<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
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
	<h1>길이 변환</h1>
	<form method="post" action="/lesson02/quiz04_1.jsp">
		<div class="form-group d-flex justify-content-left pt-2">
			<input type="text" id="length" class="form-control col-2"
				name="length">
			<p class="pl-2 pr-2 mt-3">cm</p>
		</div>
		<div>
			<label>인치<input type="checkbox" name="unit" value="in"></label>
			<label>야드<input type="checkbox" name="unit" value="yd"></label>
			<label>피트<input type="checkbox" name="unit" value="ft"></label>
			<label>미터<input type="checkbox" name="unit" value="m"></label>
		</div>
		<button type="submit" class="btn btn-success">변환하기</button>
	</form>
</body>
</html>