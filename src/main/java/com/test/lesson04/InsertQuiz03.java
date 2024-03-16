package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class InsertQuiz03 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");

		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		String insertQuery = "";
		
		if (picture.equals("")) {
			insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`) "
					+ "value ('" + sellerId + "', '" + title + "', '" + description + "', '" + price + "')";
		} else {
			insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`, `picture`) "
					+ "value ('" + sellerId + "', '" + title + "', '" + description + "', '" + price + "', '" + picture + "')";
		}

		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		ms.disconnect();

		response.sendRedirect("/lesson04/quiz03/template.jsp");
	}
}
