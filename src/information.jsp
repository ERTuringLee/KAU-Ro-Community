<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%!
	String title = null;
	int iid= 0;
	String image1 =null;
	String image2 =null;
	int date=0;
	int hits=0;
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
				<h1>식당 식단표</h1>
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
							if(idNum==null){
								rs = st.executeQuery("select * from menu order by id DESC");
								out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
								out.println("<tr>");
								out.println("<th style='width:10%;'>번호</th>");
								out.println("<th>제목</th>");
								out.println("<th style='width:10%;'>글쓴이</th>");
								out.println("<th style='width:10%;'>날짜</th>");
								out.println("<th style='width:10%;'>조회수</th>");
								 while(rs.next()){
								 	iid =  rs.getInt("id");
						      		title = rs.getString("title");
						      		date = rs.getInt("date");
						      		hits= rs.getInt("hits");
									out.println("</tr>");
									out.println("<tr>");
									out.println("<td>"+iid+"</th>");
									out.println("<td><a href='information.jsp?id="+iid+"'>"+title+"</td>");
									out.println("<td>관리자</td>");
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
					   		}else {
					   			rs = st.executeQuery("select * from menu where id="+Integer.parseInt(idNum));
								 while(rs.next()){
								 	iid =  rs.getInt("id");
						      		title = rs.getString("title");
						      		image1 = rs.getString("image1");
						      		image2 = rs.getString("image2");
						      		date = rs.getInt("date");
						      		hits= rs.getInt("hits");
						      		hits=hits+1;
						      		out.println("<table border='1' style='border-collapse:collapse;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%;'>제목</th>");
									out.println("<td>"+title+"</td>");
									out.println("<th style='width:10%;'>작성일</th>");
									if((date%100)<10){
										String day="";
										day += "0"+date%100;
						      			out.println("<td>"+date/10000+"."+date%10000/100+"."+day+"</td>");
						      		}else{
						      			out.println("<td>"+date/10000+"."+date%10000/100+"."+date%100+"</td>");
						      		}
									out.println("</tr>");
									out.println("<tr>");
									out.println("<th>글쓴이</th>");
									out.println("<td>관리자</td>");
									out.println("<th>조회수</th>");
									out.println("<td>"+hits+"</td>");
									out.println("</tr>");
									out.println("<tr>");
									if(image1==null&&image2==null){
										out.println("<td style='text-align:center' colspan='4'><img src='images/no_contents.gif'></td>");
									}
									if(image1==null&&image2!=null){
										out.println("<td style='text-align:center' colspan='4'><img src='"+image2+"'></td>");
									}
									if(image1!=null&&image2==null){
										out.println("<td style='text-align:center' colspan='4'><img src='"+image1+"'></td>");
									}
									if(image1!=null&&image2!=null){
										out.println("<td style='text-align:center' colspan='4'><img src='"+image1+"'><br /><img src='"+image2+"'></td>");
									}
									out.println("</tr>");
									out.println("</table>");
						   		}
						   		st.executeUpdate("update menu set hits='"+hits+"' where id="+Integer.parseInt(idNum));
					   		}
						}catch(SQLException e){
							out.println(e.getMessage());
						}
					%>
					</div>
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