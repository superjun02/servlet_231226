<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%!public int getSumOneToN(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum = sum + i;
		}
		return sum;
	}%>
	<%
	// 평균 점수 구하기
	int[] scores = { 81, 90, 100, 95, 80 };
	int sum = 0;
	for (int score : scores) {
		sum += score;
	}
	double avg = (double) sum / scores.length;

	// 채점 결과 구하기
	List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	int score = 0;
	for (String element : scoreList) {
		if (element.equals("O")) {
			score += 10;
		}
	}

	// 생일로부터 나이 구하기
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String today = sdf.format(date);
	String birthDay = "20000222";
	int birthYear = Integer.valueOf(birthDay);
	int age = (Integer.valueOf(today) - birthYear) / 10000;
	%>
	<h3>
		1부터 50까지의 합은
		<%=getSumOneToN(50)%>입니다.
	</h3>
	<h3>
		평균 점수는
		<%=avg%>입니다.
	</h3>
	<h3>
		채점 결과는
		<%=score%>점입니다.
	</h3>
	<h3>
		<%=birthDay%>의 나이는
		<%=age%>세입니다.
	</h3>
</body>
</html>