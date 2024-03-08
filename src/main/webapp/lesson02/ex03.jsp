<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method</title>
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
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까? <input type="text" name="nickname"><br><br>
		2. 취미는 무엇입니까? <input type="text" name="hobby"><br><br> 
		3. 강아지 or 고양이 
		<label>강아지 <input type="radio" name="animal" value="dog"></label>
		<label>고양이 <input type="radio" name="animal" value="cat"></label><br><br>
		4. 다음 중 선호하는 것을 모두 고르세요. <br>
		<label>민트초코<input type="checkbox" name="food" value="민트초코"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="하와이안 피자"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label><br><br>
		
		5. 좋아하는 과일 선택하기<br>
		<select name="fruit">
			<option>사과</option>
			<option>복숭아</option>
			<option>바나나</option>
			<option>블루베리</option>
			<option>체리</option>
		</select>
		<br><br>
		
		<button type="submit">제출</button>

	</form>
</body>
</html>