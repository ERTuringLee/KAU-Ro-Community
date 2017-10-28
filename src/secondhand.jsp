<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%!
	String title = null;
	int sid= 0;
	String content =null;
	String name = null;
	String image =null;
	int date=0;
	int hits=0;
	String password = null;
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
				<h1>중고거래</h1>
				<hr / >
				<br />
				<div align="center">
					<%
						String idNum=request.getParameter("id");
						String writer = request.getParameter("writer");
						try{
							Class.forName("org.gjt.mm.mysql.Driver");
						}catch(ClassNotFoundException e){
							out.println(e.getMessage()+"<br>");
						}
						try{
							st = conn.createStatement();
							if(writer==null){
								if(idNum==null){
									rs = st.executeQuery("select * from secondhand order by id DESC");
									out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%'>번호</th>");
									out.println("<th>제목</th>");
									out.println("<th style='width:10%'>글쓴이</th>");
									out.println("<th style='width:10%'>날짜</th>");
									out.println("<th style='width:10%'>조회수</th>");
									out.println("</tr>");
									while(rs.next()){
									 	sid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		name = rs.getString("name");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
										out.println("</tr>");
										out.println("<tr>");
										out.println("<td>"+sid+"</th>");
										out.println("<td><a href='secondhand.jsp?id="+sid+"'>"+title+"</td>");
										out.println("<td>"+name+"</td>");
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
								%>
							<input style='float:right;margin-right:10px;' type='button' value='글쓰기' onclick='location.href="secondhand.jsp?writer=yes"'>
								<%}else{
									rs = st.executeQuery("select * from secondhand where id="+Integer.parseInt(idNum));
									while(rs.next()){
									 	sid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		name = rs.getString("name");
							      		content = rs.getString("content");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
							      		image = rs.getString("file");
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
										out.println("<td>"+name+"</td>");
										out.println("<th>조회수</th>");
										out.println("<td>"+hits+"</td>");
										out.println("</tr>");
										out.println("<tr>");
										if(image==null){
											out.println("<td colspan='4'>&nbsp;&nbsp;"+content+"</div></td>");
										}else{
											out.println("<td colspan='4'>&nbsp;&nbsp;<img style='width:50%;' src='"+image+"'><br>&nbsp;&nbsp;"+content+"</div></td>");
										}
										
										out.println("</tr>");
										out.println("</table>");
							      	}
							      	st.executeUpdate("update secondhand set hits='"+hits+"' where id="+Integer.parseInt(idNum));
							     %>
							     <div align="left">
							     	&nbsp;&nbsp;<input type="button" value="목록보기" onclick="location.href='secondhand.jsp'">&nbsp;&nbsp;
							     	<!-- <input type="button" value="수정" id="secondhand-modify" onclick="location.href='secondhandModify.jsp?id='+<%=Integer.parseInt(idNum)%>">&nbsp;&nbsp; -->
							     	<input type="button" value="삭제" id="secondhand-delete">
							     </div>
							     <br/>
							     <script>
							     	$(document).ready(function (){
							     		$('#secondhand-delete').click(function () {
							     			<%
							     				rs = st.executeQuery("select * from secondhand where id="+Integer.parseInt(idNum));
							     				while(rs.next()){
							     					password = rs.getString("password");
							     				}
							     			%>
							     			var receivePassword = prompt("비밀번호를 입력하시오.","");
							     			if(receivePassword=="<%=password%>"){
							     				alert("삭제가 완료되었습니다.")
							     				location.href ="secondhandDelete.jsp?id="+"<%=Integer.parseInt(idNum)%>";
							     			}else{
							     				alert("비밀번호가 틀렸습니다.")
							     			}
							     		})
							     		$('#secondhand-modify').click(function () {
							     			location.href ="secondhandModify.jsp?id="+"<%=Integer.parseInt(idNum)%>";
							     		})
							     
							     	})
							     </script>
							     <%
							     rs = st.executeQuery("select * from secondhand order by id DESC");
									out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%'>번호</th>");
									out.println("<th>제목</th>");
									out.println("<th style='width:10%'>글쓴이</th>");
									out.println("<th style='width:10%'>날짜</th>");
									out.println("<th style='width:10%'>조회수</th>");
									out.println("</tr>");
									while(rs.next()){
									 	sid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		name = rs.getString("name");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
										out.println("</tr>");
										out.println("<tr>");
										out.println("<td>"+sid+"</th>");
										out.println("<td><a href='secondhand.jsp?id="+id+"'>"+title+"</td>");
										out.println("<td>"+name+"</td>");
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
								%>
							<input style='float:right;margin-right:10px;' type='button' value='글쓰기' onclick='location.href="secondhand.jsp?writer=yes"'>
								<%
									
								}
							}else {
							%>
								<form action="secondhandInsert.jsp" method="post"  id='secondhandform' enctype="multipart/form-data" >
							<%
								rs = st.executeQuery("select * from secondhand");
								while(rs.next()){
									sid=  rs.getInt("id");
								}
								sid+=1;
								out.println("<table border='1' style='border-collapse:collapse;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
								out.println("<tr>");
								out.println("<th style='width:10%;'><input type='text' hidden name='id' value='"+sid+"'>제목</th>");
								out.println("<td style='width:50%;'><input type='text' style='width:99%;' id='title' name='title'></td>");
								out.println("<th style='width:10%;'>작성일</th>"); 
								Date dates = new Date();
								int getDate = dates.getDate();
								if(getDate<10){
									out.println("<td>"+(dates.getYear()+1900)+"."+(dates.getMonth()+1)+".0"+getDate+"</td>");
								}else {
									out.println("<td>"+(dates.getYear()+1900)+"."+(dates.getMonth()+1)+"."+getDate+"</td>");
								}
								out.println("</tr>");
								out.println("<tr>");
								out.println("<th>글쓴이</th>");
								if((String)session.getAttribute("MasterLoginID")!=null){
									out.println("<td><input type='text' style='width:99%;' id='writer' name='writer' value='"+(String)session.getAttribute("MasterLoginID")+"'></td>");
								}else{
									out.println("<td><input type='text' style='width:99%;' id='writer' name='writer'></td>");
								}
								out.println("<th>비밀번호</th>");
								out.println("<td><input type='password' style='width:99%;' id='password' name='password'></td>");
								out.println("</tr>");
								out.println("<tr>");
								out.println("<th>사진</th>");
								out.println("<td><input style='display:inline;' type='file' style='width:99%;' id='image' name='image'>(jpg,png,gif,bmp만 가능, 10MB 제한)</td>");
								out.println("</tr>");
								out.println("<tr>");
								out.println("<th>내용</th>");
								out.println("<td colspan='3'><textarea style='width:100%' cols='100' rows='10' id='cont' name='content'></textarea></td>");
								out.println("</tr>");
								out.println("</table>");
							%>
								<br />
								<input style='float:right;margin-right:10px;' id='cancel' type='button' value='취소'>&nbsp;&nbsp;<input style='float:right;margin-right:10px;' type='submit' value='작성'>
								</form>
								<script>
									$(document).ready(function () {
										$('#cancel').click(function () {
											location.href ="secondhand.jsp";
										})
										$('#secondhandform').submit(function (event){
											if($('#title').val()==""){
												alert("제목을 입력하지 않으셨습니다.");
												event.preventDefault();
											}
											else if($('#writer').val()==""){
												alert("글쓴이정보를 입력하지 않으셨습니다.");
												event.preventDefault();
											}
											else if($('#password').val()==""){
												alert("비밀번호를 입력하지 않으셨습니다.");
												event.preventDefault();
											}else if($('#cont').val()==""){
												alert("내용을 입력하십시오");
												event.preventDefault();
											}else if($('#image').val()!=""){
												if($('#image').val().replace("C:\\fakepath\\", '').split('.')[1]!="jpg"&&$('#image').val().replace("C:\\fakepath\\", '').split('.')[1]!="png"&&$('#image').val().replace("C:\\fakepath\\", '').split('.')[1]!="gif"&&$('#image').val().replace("C:\\fakepath\\", '').split('.')[1]!="bmp"){
													alert("파일형식이 맞지않습니다.");
													event.preventDefault();
												}
											}
										})
									})
								</script>
							<%
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