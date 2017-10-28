<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%!
	String mid;
	String picture;
	String password;
	String nickname;
	String name;
	int studentNumber;
	String major;
	String email;
	String gender;
	String introduce;
	int nonpub;
%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
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
         <div id="left-section" >
            <h1>MyPage</h1>
            <hr />
            <br />
            <div align="center">
            <%
                try{
                  Class.forName("org.gjt.mm.mysql.Driver");
                }catch(ClassNotFoundException e){
                  out.println(e.getMessage()+"<br>");
                }
                try{ 
                  st = conn.createStatement();
                  rs = st.executeQuery("select * from member where id='"+(String)session.getAttribute("MasterLoginID")+"'");
                  while(rs.next()){
                  	mid = rs.getString("id");
					nickname = rs.getString("nickname");
					email= rs.getString("email");
					introduce= rs.getString("introduce");
                    picture = rs.getString("picture");
                    password = rs.getString("password");
                    name = rs.getString("name");
                    studentNumber = rs.getInt("studentNumber");
                    major = rs.getString("major");
                    gender = rs.getString("gender");
                    nonpub = rs.getInt("nonpub");
                  %>
                  <form action="MyPageModify.jsp" method="post" enctype="multipart/form-data">
                    <table style="width:60%; text-align:center;" align="center"cellpadding="0" cellspacing="0" border="0">
                    <tr>

                    	<td style="width:40%;"><input type="text" hidden name="id" value="<%=mid%>">이미지 선택</td>
                    	<td><input type="file" id="image" name="image"></td>
                    </tr>
                    
                    <tr>
                    	<td>이미지</td>
                    	<td><img style="width:30%"src='<%=rs.getString("picture")%>' id='blah'></td>
                    </tr>
                    <tr>
                    	<td>이름</td>
                    	<td><input  style="width:100%" type="text" id="name" name="name" value="<%=name%>"></td>
                    </tr>
                    <tr>
                    	<td>닉네임</td>
                    	<td><input  style="width:100%" type="text" id="nickname" name="nickname" value="<%=nickname%>"></td>
                    </tr>
                    <tr>
                    	<td>E-mail</td>
                    	<td><input style="width:100%" type="text" id="email" name="email" value="<%=email%>"></td>
                    </tr>
                    <tr>
                    	<td>비밀번호</td>
                    	<td><input style="width:100%" type="password" id="password" name="password" value="<%=password%>"></td>
                    </tr>
                    <tr>
                      <td>학번</td>
                      <td><input  style="width:100%" type="text" id="studentNumber" name="studentNumber" value="<%=studentNumber%>"></td>
                    </tr>
                    <tr>
                    	<td>전공</td>
                    	<td><input type="text" id="major" name="major" value="<%=major%>"></td>
                    </tr>
                    <tr>
                    	<td>성별</td>
                    	<td><input style="width:100%" type="text" id="gender" name="gender" value="<%=gender%>"></td>
                    </tr>
					<tr>
                    	<td>자기소개</td>
                    	<td><textarea style="width:100%" name="introduce"><%=introduce%></textarea></td>
                    </tr>
                  

                    </table>
                    <input type="submit" value="수정">&nbsp;&nbsp; <input type="button" value="취소" onclick="location.href='MyPage.jsp'">
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
						});
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
            <%@ include file="format/right-format.jsp" %>
         </div>
      </div>
      <%@ include file="format/copyImages-format.jsp" %>
   </div>
   <%@ include file="format/footer-format.jsp" %>

</body>
</body>
</html>
