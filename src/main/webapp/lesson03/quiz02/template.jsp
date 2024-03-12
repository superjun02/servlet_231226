<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱</title>
<!-- bootstrap CDN Link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<style>
header {
	height: 80px;
}

nav {
	height: 50px;
}

.content1 {
	height: 200px;
}

.content2 {
	height: 400px;
}

footer {
	height: 50px;
}
</style>
</head>
<body>
	<%
	// 아티스트 정보 

	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debute", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

	// 아이유 노래 리스트 
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
	%>
	<div class="container">
		<header class="d-flex">
			<div
				class="logo col-2 d-flex justify-content-left align-items-center">
				<div>
					<h2>
						<a href="/lesson03/quiz02/template.jsp"
							class="text-decoration-none text-success"> Melong</a>
					</h2>
				</div>
			</div>
			<div
				class="search col-10 d-flex justify-content-left align-items-center">
				<form>
					<div class="d-flex">
						<input type="text" class="col-12 form-control" name="search">
						<input type="submit" class="btn btn-info form-control" value="검색">
					</div>
				</form>
			</div>
		</header>
		<nav class="d-flex align-items-center">
			<ul class="nav col-6 d-flex nav-fill">
				<li class="nav-item"><a href="#"
					class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item font-weight-bold"><a href="#"
					class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item font-weight-bold"><a href="#"
					class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item font-weight-bold"><a href="#"
					class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item font-weight-bold"><a href="#"
					class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="content1">
			<div
				class="h-100 w-100 border border-success d-flex justify-content-left">
				<div class="m-3">
					<img alt="아티스트 이미지" src="<%=artistInfo.get("photo")%>"
						height="167px" width="167px">
				</div>
				<div class="mt-3">
					<h2><%=artistInfo.get("name")%></h2>
					<div><%=artistInfo.get("agency")%></div>
					<div><%=artistInfo.get("debute")%>
						데뷔
					</div>
				</div>
			</div>
		</section>
		<section class="content2 bg-warning"></section>
		<footer class="bg-primary"></footer>
	</div>
</body>
</html>