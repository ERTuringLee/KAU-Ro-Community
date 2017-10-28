<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%!
	String title = null;
	int fid= 0;
	String content =null;
	String writer = null;
	int date=0;
	int hits=0;
	int recommand=0;
	int nonRecommand =0;
	String image = null;
	String password = null;
	int count1=0;
	int ppnum= 0;
	int count2=0;
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
				<h1>자유게시판</h1>
				<hr / >
				<br />

				<div align="center">
					
					<%
						String idNum=request.getParameter("id");
						String writing  = request.getParameter("write");
						Statement st1, st2;
						ResultSet rs1;

						try{
							Class.forName("org.gjt.mm.mysql.Driver");
						}catch(ClassNotFoundException e){
							out.println(e.getMessage()+"<br>");
						}
						try{
							st = conn.createStatement();
							st1 = conn.createStatement();
							st2 = conn.createStatement();
							
							if(writing==null){
								if(idNum==null){
									if(request.getParameter("page")==null){
									int count5=0;
									rs1 = st1.executeQuery("select * from board");
									 while(rs1.next()){
										count5+=1;
									}
									int count =1;
									rs = st.executeQuery("select * from board");
									out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%'>번호</th>");
									out.println("<th>제목</th>");
									out.println("<th style='width:10%'>글쓴이</th>");
									out.println("<th style='width:10%'>날짜</th>");
									out.println("<th style='width:10%'>조회수</th>");
									out.println("<th style='width:10%'>추천</th>");
									 while(rs.next()){
									 	fid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
							      		recommand= rs.getInt("recommand");
							      		nonRecommand = rs.getInt("nonRecommand");
							      		writer  = rs.getString("writer");
										out.println("</tr>");
										out.println("<tr>");
										out.println("<td>"+fid+"</th>");
										out.println("<td><a href='free.jsp?id="+fid+"'>"+title+"</td>");
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
										count1+=1;
										if(count1==5){
											break;
										} 
								   	}

								   
							   		out.println("</table><br />");
							   		if(count5%5!=0){
								   		for(int i = 1; i<=count5/5+1; i++){
								   			out.println("<a href=free.jsp?page="+i+">"+i+"</a>");
								   		}
								   	}else{
								   		for(int i = 1; i<=count5/5; i++){
								   			out.println("<a href=free.jsp?page="+i+">"+i+"</a>");
								   		}
								   	}
							   		
							   		out.println("<input style='float:right;margin-right:10px;' id='freeRider' type='button' value='글쓰기'>");
							   		}else{
								   		rs1 = st1.executeQuery("select * from board");
								   		int count4=0;
										 while(rs1.next()){
											count4+=1;
										}
							   			count2=0;
							   			ppnum=Integer.parseInt(request.getParameter("page"));
							   			rs = st.executeQuery("select * from board order by id DESC");
							   			out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
										out.println("<tr>");
										out.println("<th style='width:10%'>번호</th>");
										out.println("<th>제목</th>");
										out.println("<th style='width:10%'>글쓴이</th>");
										out.println("<th style='width:10%'>날짜</th>");
										out.println("<th style='width:10%'>조회수</th>");
										out.println("<th style='width:10%'>추천</th>");
							   			while(rs.next()){
							   				
							   				if((ppnum-1)*5<=count2&&ppnum*5>count2){
								   				fid =  rs.getInt("id");
									      		title = rs.getString("title");
									      		date = rs.getInt("date");
									      		hits= rs.getInt("hits");
									      		recommand= rs.getInt("recommand");
									      		nonRecommand = rs.getInt("nonRecommand");
									      		writer  = rs.getString("writer");
												out.println("</tr>");
												out.println("<tr>");
												out.println("<td>"+fid+"</th>");
												out.println("<td><a href='free.jsp?id="+fid+"'>"+title+"</td>");
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
							   				count2+=1;
							   				

							   			}
							   			out.println("</table><br />");
							   			if(count4%5!=0){
								   			for(int i = 1; i<=count4/5+1; i++){
								   			out.println("<a href=free.jsp?page="+i+">"+i+"</a>");
								   			}
								   		}else{
								   			for(int i = 1; i<=count4/5; i++){
								   			out.println("<a href=free.jsp?page="+i+">"+i+"</a>");
								   			}
								   		}
							   			
							   		}
							   		
							   	%>
							   		<script>
							   			$(document).ready(function () {
							   				$('#freeRider').click(function () {
							   					location.href = 'free.jsp?write=yes'
							   				})
							   			})
							   		</script>
							   	<%
						   		}else{
						   			rs1 = st1.executeQuery("select * from board where id="+Integer.parseInt(idNum));
						   			while(rs1.next()){
						   				if(request.getParameter("recommand")!=null){
							   				recommand = Integer.parseInt(request.getParameter("recommand"))+1;
							   				if(recommand>rs1.getInt("recommand")){
							   					st.executeUpdate("update board set recommand="+recommand+" where id="+Integer.parseInt(idNum));
							   				}
								   		}
							   			if(request.getParameter("nonRecommand")!=null){
							   				nonRecommand = Integer.parseInt(request.getParameter("nonRecommand"))+1;
							   				if(nonRecommand>rs1.getInt("nonRecommand")){
							   					st.executeUpdate("update board set nonRecommand="+nonRecommand+" where id="+Integer.parseInt(idNum));
							   				}
							   			}
						   			}
						   			

									rs = st.executeQuery("select * from board where id="+Integer.parseInt(idNum));

									while(rs.next()){
									 	fid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		writer = rs.getString("writer");
							      		content = rs.getString("content");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
							      		image = rs.getString("file");
							      		recommand =rs.getInt("recommand");
							      		nonRecommand = rs.getInt("nonRecommand");
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
										out.println("<td>"+writer+"</td>");
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
							      	st.executeUpdate("update board set hits='"+hits+"' where id="+Integer.parseInt(idNum));
							     %>
							     <div align="center">
							     	<span id="recommandSpan"><%=recommand%></span>&nbsp;<input type="button" id="recommand" value="추천">&nbsp;&nbsp;<span id="nonRecommandSpan"><%=nonRecommand%></span>&nbsp;<input type="button" id="nonRecommand" value="비추천">
							     </div>
							     <script>
							     	$(document).ready(function(){
							     		$('#recommand').click(function () {
							     			location.href="free.jsp?id="+<%=request.getParameter("id")%>+"&recommand="+<%=recommand%>;
							     		})
							     		$('#nonRecommand').click(function () {
							     			location.href="free.jsp?id="+<%=request.getParameter("id")%>+"&nonRecommand="+<%=nonRecommand%>;
							     		})
							     	})
							     </script>
							     <div align="left">
							     	&nbsp;&nbsp;<input type="button" value="목록보기" onclick="location.href='free.jsp'">&nbsp;&nbsp;
							     	<!-- <input type="button" value="수정" id="free-modify">&nbsp;&nbsp; -->
							     	<input type="button" value="삭제" id="free-delete">
							     </div>
							     <br/>
							     <script>
							     	$(document).ready(function (){
							     		$('#free-delete').click(function () {
							     			<%
							     				rs = st.executeQuery("select * from board where id="+Integer.parseInt(idNum));
							     				while(rs.next()){
							     					password = rs.getString("password");
							     				}
							     			%>
							     			var receivePassword = prompt("비밀번호를 입력하시오.","");
							     			if(receivePassword=="<%=password%>"){
							     				alert("삭제가 완료되었습니다.")
							     				location.href ="freeDelete.jsp?id="+"<%=Integer.parseInt(idNum)%>";
							     			}else{
							     				alert("비밀번호가 틀렸습니다.")
							     			}
							     		})
							     		$('#free-modify').click(function () {
							     			location.href ="freeModify.jsp?id="+"<%=Integer.parseInt(idNum)%>";
							     		})
							     
							     	})
							     </script>
							     <%
							     rs = st.executeQuery("select * from board order by id DESC");
									out.println("<table border='1' style='border-collapse:collapse;text-align:center;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
									out.println("<tr>");
									out.println("<th style='width:10%'>번호</th>");
									out.println("<th>제목</th>");
									out.println("<th style='width:10%'>글쓴이</th>");
									out.println("<th style='width:10%'>날짜</th>");
									out.println("<th style='width:10%'>조회수</th>");
									out.println("<th style='width:10%'>추천</th>");
									out.println("</tr>");
									while(rs.next()){
									 	fid =  rs.getInt("id");
							      		title = rs.getString("title");
							      		writer = rs.getString("writer");
							      		date = rs.getInt("date");
							      		hits= rs.getInt("hits");
							      		recommand = rs.getInt("recommand");
										out.println("</tr>");
										out.println("<tr>");
										out.println("<td>"+fid+"</th>");
										out.println("<td><a href='free.jsp?id="+fid+"'>"+title+"</td>");
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
									out.println("<br>");
								%>
							<input style='float:right;margin-right:10px;' type='button' value='글쓰기' onclick='location.href="free.jsp?write=yes"'>
								<%
									
						   		}
					   		}else {
				   			%>
							<form action="freeInsert.jsp" method="post"  id='freeform' enctype="multipart/form-data" >
							<%
								rs = st.executeQuery("select * from board");
								while(rs.next()){
									fid=  rs.getInt("id");
								}
								fid+=1;
								out.println("<table border='1' style='border-collapse:collapse;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
								out.println("<tr>");
								out.println("<th style='width:10%;'><input type='text' hidden name='id' value='"+fid+"'>제목</th>");
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
								<script>
									$(document).ready(function () {
										$('#cancel').click(function () {
											location.href ="free.jsp";
										})
										$('#freeform').submit(function (event){
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
											}else if($('#image').val()==""){
												alert("파일을 입력해주세요")
												event.preventDefault();
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
				<%@ include file="format/community-right-format.jsp" %>
				<%@ include file="format/right-format.jsp" %>
			</div>
		</div>
		<%@ include file="format/copyImages-format.jsp" %>
	</div>
	<%@ include file="format/footer-format.jsp" %>
</body>
</html>