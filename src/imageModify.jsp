<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%!
	String title = null;
	int hid= 0;
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
				<h1>이미지 수정</h1>
				<hr / >
				<br />
				<div align="center">
				<form action="imageMo.jsp" method="post"  id='imageform' enctype="multipart/form-data" >
				<%
					String idNum=request.getParameter("id");
					hid = Integer.parseInt(idNum);
					st = conn.createStatement();
					try{
					rs = st.executeQuery("select * from image where id="+hid);
					while(rs.next()){
						password=rs.getString("password");
						out.println("<table border='1' style='border-collapse:collapse;border-left:1px solid #FFFFFF;border-right:1px solid #FFFFFF; width:100%;' rules='rows' >");
						out.println("<tr>");
						out.println("<th style='width:10%;'><input type='text' hidden name='id' value='"+hid+"'>제목</th>");
						out.println("<td style='width:50%;'><input type='text' style='width:99%;' id='title' name='title' value='"+rs.getString("title")+"'></td>");
						out.println("<th style='width:10%;'>작성일</th>");
						if((rs.getInt("date")%100)<10){
							out.println("<td>"+(rs.getInt("date")/10000)+"."+(rs.getInt("date")%10000/100)+".0"+(rs.getInt("date")%100)+"</td>");
						}else{
							out.println("<td>"+(rs.getInt("date")/10000)+"."+(rs.getInt("date")%10000/100)+"."+(rs.getInt("date")%100)+"</td>");
						}
						out.println("</tr>");
						out.println("<tr>");
						out.println("<th>글쓴이</th>");
						out.println("<td><input type='text' style='width:99%;' id='writer' name='writer' value='"+rs.getString("writer")+"'></td>");
						out.println("<th>비밀번호</th>");
						out.println("<td><input type='password' style='width:99%;' id='password' name='password'></td>");
						out.println("</tr>");
						out.println("<tr>");
						out.println("<th>사진</th>");
						out.println("<td><input style='display:inline;' type='file' style='width:99%;' id='image' name='image'>(jpg,png,gif,bmp만 가능, 10MB 제한)</td>");
						out.println("</tr>");
						out.println("<tr>");
						out.println("<th>내용</th>");
						out.println("<td colspan='3'><img src='"+rs.getString("file")+"' id='blah'><textarea style='width:100%' cols='100' rows='10' id='cont' name='content'>"+rs.getString("content")+"</textarea></td>");
						out.println("</tr>");
						out.println("</table>");
						}
						st.close();
						conn.close();
					}catch(SQLException e){
						out.println(e.getMessage());
					}
				%>
				<br />
					<input style='float:right;margin-right:10px;' id='cancel' type='button' value='취소'>&nbsp;&nbsp;<input style='float:right;margin-right:10px;' type='submit' value='작성'>
				</form>
				<script>
					$(document).ready(function () {
						$('#image').on('change', function(){
							readURL(this);
						});
						function readURL(input){
							if(input.files && input.files[0]) {
								var reader = new FileReader();
								reader.onload = function (e) {
									$('#blah').attr('src', e.target.result);
								}
								reader.readAsDataURL(input.files[0]);
							}
						}
						$('#cancel').click(function () {
							location.href ="image.jsp?id=<%=hid%>";
						})
						$('#imageform').submit(function (event){
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
							if($('#password').val()!="<%=password%>"){
								alert("비밀번호가 잘못되었습니다.");
								event.preventDefault();
							}
						})
					})
					</script>
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