<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아이유 노래 리스트 List
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

String musicId = request.getParameter("musicId");
String search = request.getParameter("search");
boolean isData = false;

Iterator<Map<String, Object>> iter = musicList.iterator();

Map<String, Object> target = new HashMap<>();

while (iter.hasNext()) {
	Map<String, Object> element = iter.next();
	Integer intVar = (Integer) element.get("id");
	String id = String.valueOf(intVar);
	String title = (String) element.get("title");

	if (id.equals(musicId) || title.equals(search)) {
		target = element;
		break;
	}
}
%>
<%
if (target.isEmpty()) {
%>
<div class="pt-1">
	<h4>곡 정보가 없습니다.</h4>
</div>
<%
} else {
%>
<div class="pt-1">
	<h4>곡 정보</h4>
</div>
<section class="content1">
	<div
		class="h-100 w-100 border border-success d-flex justify-content-left">
		<div class="m-3">
			<img alt="앨범 이미지" src="<%=target.get("thumbnail")%>" height="187px"
				width="187px">
		</div>
		<div id="musicInfo" class="mt-3 mb-3">
			<h1><%=target.get("title")%></h1>
			<div class="text-success"><%=target.get("singer")%></div>
			<table>
				<tbody>
					<tr>
						<td><small class="text-secondary">앨범</small></td>
						<td><small> <%=target.get("album")%></small></td>
					</tr>
					<tr>
						<td><small class="text-secondary">재생시간</small></td>
						<td><small> <%
 int min = (Integer) target.get("time") / 60;
 int sec = (Integer) target.get("time") % 60;
 %> <%=min%> : <%=sec%>
						</small></td>
					</tr>
					<tr>
						<td><small class="text-secondary">작곡가</small></td>
						<td><small><%=target.get("composer")%></small></td>
					</tr>
					<tr>
						<td><small class="text-secondary">작사가</small></td>
						<td><small><%=target.get("lyricist")%></small></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<section>
	<div class="pt-3">
		<h4>가사</h4>
		<hr>
		<div class="font-weight-bold">가사 정보 없음</div>
	</div>
	<br> <br> <br>
	<hr>
</section>
<%
}
%>