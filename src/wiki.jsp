<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>KAU路-한국항공대 커뮤니티</title>
	<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="script/jquery.js"></script>
	<script type="text/javascript" src="script/script.js"></script>
	<script type="text/javascript" src="script/wiki-script.js"></script>
</head>

<body>
	<div id="page-wrapper">
		<%@ include file="format/head-format.jsp" %>
		<div id="content">
			<div id="left-section">
				<h1>전공정보</h1>
				<hr / >
				<br />
				<div id="major">
					<div id="big-catecory">
						계열별
						<hr />
						<div id="gyeyoul">
							<br/>
							<a id="engineering">공과대학</a><br/><br/>
							<a id="aerospace_business">항공/경영대학</a><br/><br/>
							<a id="peple_nature">인문자연학부</a>
						</div>
					</div>
					<div id="small-catecory">
						
						<div id="majoring">전공별
						<hr /></div>
					</div>
					<div id="select-menu">
						<div id="menu-selecting">선택
						<hr /></div>
					</div>
					<div class="inner_notice" align="center" id="scroll1" style="width:100%;hight:400px;">

					</div>
					<div id="detail-major" style="width:100%;hight:400px;"></div>
				</div>

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