package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String text =  request.getParameter("searchText");
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.", 
		        "맛집을 찾아 떠나는 여행 맛집찾아 삼만리",
		        "가정집의 맛집의 맛집의 맛집의 맛집의 맛집"));
		
		Iterator<String> iter = list.iterator();

        while(iter.hasNext()) {
            String element = iter.next();
            
            if (element.contains(text)) {
            	// replace
                out.print(element.replace(text, "<b>" + text + "</b>"));
                out.print("<br>");
            	
                // split
//            	String[] splitTextArray = element.split(text);
//                for (int i = 0; i < splitTextArray.length - 1; i++) {
//                    out.print(splitTextArray[i] + "<b>" + text + "</b>");
//                }
//                // 마지막 배열에는 볼드된 text가 안들어가야되므로 밖으로 빼기
//                out.print(splitTextArray[splitTextArray.length - 1]);
//                
//                // 검색 단어가 마지막에 위치할 경우 볼드 처리
//                if (element.endsWith(text)) {
//                    out.print("<b>" + text + "</b>");
//                }
//                out.print("</br>");
            }
            
        } 
	}
}
