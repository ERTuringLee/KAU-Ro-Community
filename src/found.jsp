<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>아이디 와 비밀번호 찾기</title>
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
				<h1>아이디/ 비밀번호 찾기</h1>
				<hr />
				<br />
				<div id="table-div" align="center">
					<table border="1"style="border-collapse:collapse;">
						<tr>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('findid.jsp, 'child1', '',true);">ID찾기</th>
							<th class="green-class" style="cursor:pointer;" onclick="window.open('findpw.jsp', 'child2', '',true);">비밀번호찾기</th>
							</tr>
						<tr>
							<td>
								<img style="cursor:pointer;" title="아이디찾기" onclick="window.open('findid.jsp', 'child1', '',true);" src="images/find_id.png" width="450" height="300">
							</td>
							<td>
								<img style="cursor:pointer;" title="비밀번호찾기" onclick="window.open('findpw.jsp', 'child2', '',true);" src="images/find_pw.png" width="450" height="300">
							</td>
						</tr>
					</table>		
				</div>	
			</div>
			<div id="right-section" >
			<%@ include file="format/developer-right-format.jsp" %>
			<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>