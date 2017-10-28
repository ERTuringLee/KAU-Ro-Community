<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>KAU路-한국항공대 커뮤니티</title>
	<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="script/jquery.js"></script>
	<script type="text/javascript" src="script/script.js"></script>
</head>

<body>
	<div id="page-wrapper">
		<%@ include file="format/head-format.jsp" %>
		<div id="content">
			<div id="left-section">
				<h1>링크</h1>
				<hr / >
				<br />
				<div id="table-div" align="center">
					<table border="1"style="border-collapse:collapse;">
						<tr>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://kau.ac.kr', 'child1', '',true);">KAU 홈페이지</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('https://www.kau.ac.kr/page/login.jsp?ppage=&target_page=act_Portal_Check.jsp@chk1-1', 'child2', '',true);">종합정보시스템</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://su.kau.ac.kr/sugang/index.su', 'child3', '',true);">수강신청</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://time.navyism.com/?host=su.kau.ac.kr', 'child4', '',true);">서버시간</th>
						</tr>
						<tr>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 공식 홈페이지" onclick="window.open('http://kau.ac.kr', 'child1', '',true);" src="images/kau.png" width="240" height="160">
							</td>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 종합정보시스템" onclick="window.open('https://www.kau.ac.kr/page/login.jsp?ppage=&target_page=act_Portal_Check.jsp@chk1-1', 'child2', '',true);" src="images/total-info.png" width="240" height="160">
							</td>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 수강신청 페이지" onclick="window.open('http://su.kau.ac.kr/sugang/index.su', 'child3', '',true);" src="images/sugang.png" width="240" height="160">
							</td>
							<td>
								<img style="cursor:pointer;" title="서버시간 확인" onclick="window.open('http://time.navyism.com/?host=su.kau.ac.kr', 'child4', '',true);" src="images/servertime.png" width="240" height="160">
							</td>
						</tr>
						<tr>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://abeek.kau.ac.kr/kauabeek/index.do', 'child5', '',true);">공학인증</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://lms.kau.ac.kr/', 'child6', '',true);">LMS</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://lib.kau.ac.kr/', 'child7', '',true);">중앙도서관</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('http://locker.kau.ac.kr/', 'child8', '',true);">사물함 신청</th>
						</tr>
						<tr>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 공학인증 페이지" onclick="window.open('http://abeek.kau.ac.kr/kauabeek/index.do', 'child5', '',true);" src="images/abeek.png" width="240" height="160">
							</td>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 LMS 페이지" onclick="window.open('http://lms.kau.ac.kr/', 'child6', '',true);" src="images/lms.png" width="240" height="160">
							</td>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 중앙도서관 홈페이지" onclick="window.open('http://lib.kau.ac.kr/', 'child7', '',true);" src="images/lib.png" width="240" height="160">

							</td>
							<td>
								<img style="cursor:pointer;" title="한국항공대학교 사물함 신청 페이지" onclick="window.open('http://locker.kau.ac.kr/', 'child8', '',true);" src="images/samul.png" width="240" height="160">	
							</td>
						</tr>
					</table>
					
				</div>
			</div>
			<div id="right-section" >
				<div style="background:rgb(214,230,245);">링크</div>
				<div id="linker">
					<ul id="ul-linker">
						<li><a style="cursor:pointer;" onclick="window.open('http://www.kau.ac.kr');">KAU 홈페이지</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('https://www.kau.ac.kr/page/login.jsp?ppage=&target_page=act_Portal_Check.jsp@chk1-1');">종합정보시스템</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://su.kau.ac.kr/sugang/index.su');">수강신청</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://time.navyism.com/?host=su.kau.ac.kr');">서버시간</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://abeek.kau.ac.kr/kauabeek/index.do');">공학인증</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://lms.kau.ac.kr/');">LMS</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://lib.kau.ac.kr/');">중앙도서관</a></li>
						<li><a style="cursor:pointer;" onclick="window.open('http://locker.kau.ac.kr/');">사물함 신청</a></li>
					</ul>
					<br />
				</div>
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>