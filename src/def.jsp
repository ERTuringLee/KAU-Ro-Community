<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>KAU路-한국항공대 커뮤니티</title>
	<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="script/jquery.js"></script>
	<script type="text/javascript" src="script/script.js"></script>
	<script type="text/javascript" src="script/def-script.js"></script>
</head>

<body>
	<div id="page-wrapper">
		<%@ include file="format/head-format.jsp" %>
		<div id="content">
			<div id="left-section">
				<h1>동아리정보</h1>
				<hr / >
				<br />
				<select id="activity-select"><option value="선택">동아리 선택</option><option value="한나래 방송국">1. 한나래 방송국</option><option value="NCDS">2. NCDS</option><option value="래피릿츠">3. 래피릿츠</option><option value="신문사">4. 신문사</option><option value="ESC">5. E.S.C</option></select>
				<div id="activity-club"><br/><br/></div>
			</div>
			<div id="right-section" >
				<%@ include file="format/wiki-right-format.jsp" %>
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>