<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>KAU路-한국항공대 커뮤니티</title>
	<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="script/jquery.js"></script>
	<script type="text/javascript" src="script/script.js"></script>
	<script type="text/javascript" src="script/deliver-script.js"></script>
</head>

<body>
	<div id="page-wrapper">
		<%@ include file="format/head-format.jsp" %>
		<div id="content">
			<div id="left-section">
				<h1>배달음식</h1>
				<hr / >
				<br />
				<select id="menuCategory"><option value="선택">선택</option><option value="치킨">치킨</option><option value="중국집">중국집</option><option value="피자">피자</option><option value="한식/분식">한식/분식</option><option value="족발/보쌈">족발/보쌈</option><option value="찜/탕">찜/탕</option><option value="기타">기타</option></select>
				<select id="resName"><option>식당이름칸</option></select>
				<div align="center"><div id="menuimage"></div></div>
			</div>
			<div id="right-section" >
				<%@ include file="format/information-right-format.jsp" %>
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>