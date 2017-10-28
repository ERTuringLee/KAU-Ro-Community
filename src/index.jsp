<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>

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
		<%
			try{
				Class.forName("org.gjt.mm.mysql.Driver");
			}catch(ClassNotFoundException e){
				out.println(e.getMessage()+"<br>");
			}
			try{
				
				st = conn.createStatement();
				rs = st.executeQuery("select * from total_visit");
				while(rs.next()){
					total_visit = rs.getInt("visit");
					id=rs.getInt("id");
				}
				total_visit = total_visit+1;
				st.executeUpdate("update total_visit set visit="+(total_visit)+" where id="+id);
			}catch(SQLException e){
				out.println(e.getMessage());
			}
		%>
		<div id="content">
			<div id="left-section">
				<h1><span style="color:#191970;font-style:italic;">K</span><span style="color:red;font-style:italic;">A</span><span style="color:#ffc000;font-style:italic;">U</span> <span style="background:#6495ed;color:white;">路</span>에 오신 것을 환영합니다.</h1>
				<hr / >
				<br />
				<iframe width="854" height="480" src="https://www.youtube.com/embed/5Ebn63UEkVo" frameborder="0" allowfullscreen></iframe>
				<br />
				<br />
			</div>
			<div id="right-section" >
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>