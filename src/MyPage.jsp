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
                    name = rs.getString("name");
                    studentNumber = rs.getInt("studentNumber");
                    major = rs.getString("major");
                    gender = rs.getString("gender");
                    nonpub = rs.getInt("nonpub");
                    %>
                    <table style="width:50%; text-align:center;" align="center"cellpadding="0" cellspacing="0" border="0">	
		             <tr>
		               <td>사진</td>
		            <%
		                out.println("<td><img style='width:30%' src='"+picture+"'></td>");
		            %>
		              </tr>
		              <tr>
		              <td>아이디</td>
		          	<%
                     
                      out.println("<td>"+mid+"</td>");
                    %>
                    </tr>
                    <tr>
		           	<td>닉네임</td>
		           	<%
                      out.println("<td>"+nickname+"</td>");
                    %>
                    </tr>
                    <tr>
		           	<td>이메일</td>
		           	<td><%=email%></td>
		           	</tr>
		           	<tr>
		           	<td>학번</td>
		           	<td><%=studentNumber%></td>
		           	</tr>
		           	<tr>
		           	<td>성별</td>
		           	<td><%=gender%></td>
		           	</tr>
		           	<tr>
		           	<td>전공</td>
		           	<td><%=major%></td>
		           	</tr>
                <tr>
                <td>자기소개</td>
                <td><%=introduce%></td>
                </tr>

                    </table>
                    <br />
                    <input type="button" value="수정" id="MypageMod">&nbsp;&nbsp;<input type="button" value="회원탈퇴" id="MypageDel" onclick="location.href='MyPageDelete.jsp?id=<%=mid%>'">
                    <br>
                    <br>
                     <table style="width:50%; text-align:center;" align="center"cellpadding="0" cellspacing="0" border="1">
                     <tr>
                        <th colspan="2">쪽지</th>
                     </tr>
                     <tr>
                        <th style="width:20%;">보낸사람</th>
                        <th>내용</th>
                     </tr>
                     <%
                       st = conn.createStatement();
                        rs = st.executeQuery("select * from twit where t='"+(String)session.getAttribute("MasterLoginID")+"'");
                        while(rs.next()){
                          String twit =rs.getString("twit");
                          String from = rs.getString("fr");
                      %>
                        <tr>
                        <td style="text-align:center"><%=from%></td>
                        <td style="text-align:center"><%=twit%></td>
                     </tr>
                      <%
                        }
                     %>

                     </table>
                    <script>
                      $(document).ready(function () {
                        $('body').on('click', '#MypageMod', function() {
                          location.href="MyPageMod.jsp?id=<%=mid%>"
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
            <%@ include file="format/right-format.jsp" %>
         </div>
      </div>
      <%@ include file="format/copyImages-format.jsp" %>
   </div>
   <%@ include file="format/footer-format.jsp" %>

</body>
</body>
</html>