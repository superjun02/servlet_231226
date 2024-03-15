package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String insertQuery = "insert into `bookmark` (`name`, `url`) values "
				+ "('" + name + "', '" + url + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 북마크 화면으로 redirect
		response.sendRedirect("/lesson04/quiz02/bookmark.jsp");
	}
}
