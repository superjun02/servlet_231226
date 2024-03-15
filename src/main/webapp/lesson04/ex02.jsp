<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
<body>
	<%--
		흐름
		1) 유저 추가: ex02.jsp(input 폼) -> InsertEx02 서블릿(DB Insert) -> redirect로 ex02_1.jsp로 보낼때 jsp 자바 구문으로 DB select
	 --%>
	 <form method="post" action="/lesson04/ex02_insert">
	 	<p>
	 		<b>이름</b>
	 		<input type="text" name="name">
	 	</p>
	 	<p>
	 		<b>생년월일</b>
	 		<input type="text" name="yyyymmdd">
	 	</p>
	 	<p>
	 		<b>이메일</b>
	 		<input type="text" name="email">
	 	</p>
	 	<p>	
	 		<b>자기소개</b><br>
	 		<textarea name="introduce" rows="5"></textarea>
	 	</p>
	 	<p>
	 		<input type="submit" value="추가">
	 	</p>
	 </form>
</body>
</html>