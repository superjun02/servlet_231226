<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String search = request.getParameter("search");
	
	if (search == null) {
		search = "";
	}
%>
<header class="d-flex">
	<div class="logo col-2 d-flex justify-content-left align-items-center">
		<div>
			<h2>
				<a href="/lesson03/quiz02/template.jsp"
					class="text-decoration-none text-success"> Melong</a>
			</h2>
		</div>
	</div>
	<div
		class="search col-10 d-flex justify-content-left align-items-center">
		<form method="get" action="/lesson03/quiz02/infoTemplate.jsp">
			<div class="d-flex">
				<input type="text" class="col-12 form-control" name="search" value="<%= search %>">
				<input type="submit" class="btn btn-info form-control" value="검색">
			</div>
		</form>
	</div>
</header>