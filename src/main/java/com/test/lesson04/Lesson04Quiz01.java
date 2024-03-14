package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		// DB 연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// 쿼리문 수행 (insert)
//		String insertQuery = "insert into `real_estate` (`realtorId`, `address`, `area`, `type`, `price`) value (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
//		try {
//			ms.update(insertQuery);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		// 쿼리문 수행 (select) & 결과 출력
		String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {
				out.println("매물 주소: " + resultSet.getString("address") + ", 면적: " + resultSet.getInt("area") + ", 타입: " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
}
