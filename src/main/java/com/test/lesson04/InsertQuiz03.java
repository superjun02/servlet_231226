package com.test.lesson04;

import java.io.IOException;
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
		String image = request.getParameter("image");

		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		String insertQuery = "";
		
		if (image.equals("")) {
			insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`) "
					+ "value ('" + sellerId + "', '" + title + "', '" + description + "', '" + price + "')";
		} else {
			insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`, `image`) "
					+ "value ('" + sellerId + "', '" + title + "', '" + description + "', '" + price + "', '" + image + "')";
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
