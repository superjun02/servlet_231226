package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		if (request.getParameter("mul_num") != null) {
			int mulNum = Integer.valueOf(request.getParameter("mul_num"));
			
			out.print("<html><head><title>Quiz05</title></head><body>");
			out.print("<ul>");
			for (int i = 1; i <= 9; i++) {
				out.print("<li>");
				out.print(mulNum + " X " + i + " = " + mulNum * i);
				out.print("</li>");
			}
			out.print("</ul></body></html>");
		}
	}
}
