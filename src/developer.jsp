<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%!

	String name = null;
	String tell = null;
	String information = null;
	String imgsrc = null;
%>

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
				<h1>개발자정보</h1>
				<hr / >
				<br />
				<div id = "develInform-table" align="center">
				<%
					
					try{
						Class.forName("org.gjt.mm.mysql.Driver");
					}catch(ClassNotFoundException e){
						out.println(e.getMessage()+"<br>");
					}
					try{
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
						st = conn.createStatement();
						rs = st.executeQuery("select * from developer");
						 while(rs.next()){
				      		name = rs.getString("name");
				      		tell = rs.getString("tell");
				      		information= rs.getString("information");
				      		imgsrc= rs.getString("image");
							out.println("<table border='1' style='width:80%;border-collapse:collapse;'>");
							out.println("<tr>");
							out.println("<th rowspan='3'><img src='"+imgsrc+"'></th>");
							out.println("<th style='width:10%'>이름</th>");
							out.println("<td style='text-align:center;width:75%'>"+name+"</td>");
							out.println("</tr>");
							out.println("<tr>");
							out.println("<th style='width:10%'>전화번호</th>");
							out.println("<td style='text-align:center;width:75%'>"+tell+"</td>");
							out.println("</tr>");
							out.println("</tr>");
							out.println("<tr>");
							out.println("<th style='width:10%'>정보</th>");
							out.println("<td style='text-align:center;width:75%'>"+information+"</td>");
							out.println("</tr>");
							out.println("</table>");
							
				   		}
					}catch(SQLException e){
						out.println(e.getMessage());
					}
				%>
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