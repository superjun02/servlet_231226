<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select * from `seller`";

ResultSet resultSet = ms.select(selectQuery);
%>
<script>
	$(document).ready(function () {
		$("#submit").on("click", function() {
            let sellerId = $("#sellerId").val();
            let title = $("#title").val();
            let price = $("#price").val();
            let description = $("#description").val();

            if (sellerId === "null") {
                alert("아이디를 선택해주세요");
                event.preventDefault();
                return;
            }
            if (title === "") {
                alert("제목을 입력해주세요");
                event.preventDefault();
                return;
            }
            if (price === "") {
                alert("가격을 입력해주세요");
                event.preventDefault();
                return;
            }
            if (description === "") {
                alert("내용을 입력해주세요");
                event.preventDefault();
                return;
            }
            /* document.getElementById("itemForm").submit(); */
        });
	});
</script>
<section>
	<div class="input-box">
		<div class="mx-5">
			<div class="display-4">물건 올리기</div>
		</div>
		<form id="itemForm" method="post" action="/lesson04/quiz03_insert">
			<div class="d-flex justify-content-between mx-5 mt-5">
				<select class="form-control mr-3 col-3" id="sellerId" name="sellerId">
					<option value="null">-아이디 선택-</option>
					<%
					while (resultSet.next()) {
					%>
					<option value="<%=resultSet.getInt("id")%>"><%=resultSet.getString("nickname")%></option>
					<%
					}
					ms.disconnect();
					%>
				</select> <input type="text" id="title" name="title" class="form-control mr-3 col-5"
					placeholder="제목">
				<div class="input-group col-3">
					<input type="text" id="price" class="form-control" name="price"
						placeholder="가격"> <span class="input-group-text">원</span>
				</div>
			</div>
			<div class="mx-5 mt-3">
				<textarea class="form-control" rows="4" id="description" name="description"></textarea>
			</div>
			<div class="input-group mx-5 mt-3">
				<span class="input-group-text">이미지 url</span> <input type="text"
					class="url-input form-control" id="picture" name="picture">
			</div>
			<div class="mx-5 mt-3">
				<input type="submit" id="submit" value="저장" class="btn btn-success form-control">
			</div>
		</form>
	</div>
</section>