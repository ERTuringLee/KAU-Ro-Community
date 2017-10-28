<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%!
	String title = null;
	int cid= 0;
	String content =null;
	String writer = null;
	int date=0;
	int hits=0;
	int recommand=0;
	int nonRecommand=0;
	String image = null;
	int count =0;
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
				<h1>베스트 글</h1>
				<hr / >
				<br />
				<div align="center">
					<%
						String idNum=request.getParameter("id");


						try{
							Class.forName("org.gjt.mm.mysql.Driver");
						}catch(ClassNotFoundException e){
							out.println(e.getMessage()+"<br>");
						}
						try{
							st = conn.createStatement();
							rs = st.executeQuery("select * from board where recommand>=30 order by id DESC");
							while(rs.next()){
								count+=1;
							}
							if(idNum==null){
								rs = st.executeQuery("select * from board where recommand>=30 order by id DESC");
								out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
								out.println("<tr>");
								out.println("<th style='width:10%'>번호</th>");
								out.println("<th>제목</th>");
								out.println("<th style='width:10%'>글쓴이</th>");
								out.println("<th style='width:10%'>날짜</th>");
								out.println("<th style='width:10%'>조회수</th>");
								out.println("<th style='width:10%'>추천</th>");
								 while(rs.next()){
								 	cid =  rs.getInt("id");
						      		title = rs.getString("title");
						      		date = rs.getInt("date");
						      		hits= rs.getInt("hits");
						      		recommand= rs.getInt("recommand");
						      		writer  = rs.getString("writer");

									out.println("</tr>");
									out.println("<tr>");
									out.println("<td>"+cid+"</th>");
									out.println("<td><a href='community.jsp?id="+cid+"'>"+title+"</td>");
									out.println("<td>"+writer+"</td>");
									if((date%100)<10){
										String day="";
										day += "0"+date%100;
						      			out.println("<td>"+date/10000+"."+date%10000/100+"."+day+"</td>");
						      		}else{
						      			out.println("<td>"+date/10000+"."+date%10000/100+"."+date%100+"</td>");
						      		}
									out.println("<td>"+hits+"</td>");
									out.println("<td>"+recommand+"</td>");

						   		}
						   		out.println("</table>");
						   		for(int i=0; i<((count/10)+1); i++){
						   			out.println("<a href=community.jsp?page="+((count/10)+1)+">"+((count/10)+1)+"</a>");
						   		}
					   		}else {
					   			rs = st.executeQuery("select * from board where id="+Integer.parseInt(idNum));
								 while(rs.next()){
								 	cid =  rs.getInt("id");
						      		title = rs.getString("title");
						      		content = rs.getString("content");
						      		date = rs.getInt("date");
						      		hits= rs.getInt("hits");
						      		recommand= rs.getInt("recommand");
						      		nonRecommand = rs.getInt("nonRecommand");
						      		writer  = rs.getString("writer");
						      		image = rs.getString("file");
						      		out.println("<table border='1' style='border-collapse:collapse;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%;'>제목</th>");
									out.println("<td>"+title+"</td>");
									out.println("<th style='width:10%;'>작성일</th>");
									if((date%100)<10){
										String day="";
										day += "0"+date%100;
						      			out.println("<td colspan='3'>"+date/10000+"."+date%10000/100+"."+day+"</td>");
						      		}else{
						      			out.println("<td colspan='3'>"+date/10000+"."+date%10000/100+"."+date%100+"</td>");
						      		}
						      		hits = hits+1;
									out.println("</tr>");
									out.println("<tr>");
									out.println("<th>글쓴이</th>");
									out.println("<td>"+writer+"</td>");
									out.println("<th>조회수</th>");
									out.println("<td>"+hits+"</td>");
									out.println("<th>추천</th>");
									out.println("<td>"+recommand+"</td>");
									out.println("</tr>");
									out.println("<tr>");
									if(image==null){
											out.println("<td colspan='6'>&nbsp;&nbsp;"+content+"</div></td>");
										}else{
											out.println("<td colspan='6'>&nbsp;&nbsp;<img style='width:50%;' src='"+image+"'><br>&nbsp;&nbsp;"+content+"</div></td>");
										}
									out.println("</tr>");
									out.println("</table>");
						   		}
						   		st.executeUpdate("update board set hits='"+hits+"' where id="+Integer.parseInt(idNum));
						   		%>
						   		 <div align="left">
							     	&nbsp;&nbsp;<input type="button" value="목록보기" onclick="location.href='community.jsp'">
							    </div>
							    <br/>
							    <%
							    rs = st.executeQuery("select * from board where recommand>=30 order by id DESC");
									out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%'>번호</th>");
									out.println("<th>제목</th>");
									out.println("<th style='width:10%'>글쓴이</th>");
									out.println("<th style='width:10%'>날짜</th>");
									out.println("<th style='width:10%'>조회수</th>");
									out.println("</tr>");
									while(rs.next()){
									 	cid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		writer = rs.getString("writer");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
										out.println("</tr>");
										out.println("<tr>");
										out.println("<td>"+cid+"</th>");
										out.println("<td><a href='community.jsp?id="+cid+"'>"+title+"</td>");
										out.println("<td>"+writer+"</td>");
										if((date%100)<10){
											String day="";
											day += "0"+date%100;
							      			out.println("<td>"+date/10000+"."+date%10000/100+"."+day+"</td>");
							      		}else{
							      			out.println("<td>"+date/10000+"."+date%10000/100+"."+date%100+"</td>");
							      		}
										
										out.println("<td>"+hits+"</td>");
										
							   		}
									out.println("</table>");
									out.println("<br>");
					   		}
						}catch(SQLException e){
							out.println(e.getMessage());
						}
					%>
				</div>
				

			</div>
			<div id="right-section" >
				<%@ include file="format/community-right-format.jsp" %>
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>