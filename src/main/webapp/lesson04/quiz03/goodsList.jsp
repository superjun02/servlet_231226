<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.`id` = B.`sellerId` order by B.`id` desc";

ResultSet resultSet = ms.select(selectQuery);
%>
<section>
	<div class="d-flex flex-wrap py-3">
		<%
		while (resultSet.next()) {
		%>
		<div class="thumbnailBox">
			<%
			if (resultSet.getString("B.image") == null) {
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
					src="<%=resultSet.getString("B.image")%>">
			</div>
			<%
			}
			%>
			<div class="mx-2">
				<h5>
					[<%=resultSet.getString("B.title")%>]
				</h5>
			</div>
			<div class="mx-2 text-secondary">
				<%=resultSet.getInt("B.price")%>원
			</div>
			<div class="mx-2 text-orange">
				<b><%=resultSet.getString("A.nickname")%></b>
			</div>
		</div>
		<%
		}
		ms.disconnect();
		%>
	</div>
</section>