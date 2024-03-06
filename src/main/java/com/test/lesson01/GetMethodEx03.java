package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// Request Parameter 
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("유저 아이디: " + userId);	
//		out.println("유저 네임: " + name);
//		
//		if (request.getParameter("age") != null) {
//			int age = Integer.valueOf(request.getParameter("age"));
//			out.println("유저 나이: " + age);
//		}
		
		// JSON(JavaScript Object Notation)으로 출력 response 구성
		// {"user_id":"superjun02", "name":"이상준", "age":24}
		out.println("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
