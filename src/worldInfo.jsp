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
  int love;
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
            <h1>정보</h1>
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
                  rs = st.executeQuery("select * from member where name='"+request.getParameter("name")+"'");
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

                    love = rs.getInt("love");
                    %>
                    <table style="width:50%; text-align:center;" align="center"cellpadding="0" cellspacing="0" border="0">	
		             <tr>
		               <td>사진</td>
		            <%
		                out.println("<td><img style='width:30%' src='"+picture+"'></td>");
		            %>
		              </tr>
		              
                    <tr>
		           	<td>이름</td>
		           	<%
                      out.println("<td>"+name+"</td>");
                      if(request.getParameter("love")!=null){

                          love = Integer.parseInt(request.getParameter("love"))+1;
                          if(love > rs.getInt("love")){
                            st = conn.createStatement();
                            st.executeUpdate("update member set love="+love+" where id='"+mid+"'");
                          }else{
                            love= rs.getInt("love");
                          }
                          
                     }
                    %>
                    </tr>
                    <tr>
		           	<td>이메일</td>
		           	<td><%=email%></td>
		           	</tr>
		           	
		           	<tr>
		           	<td>성별</td>
		           	<td><%=gender%></td>
		           	</tr>
		           	<tr>
		           	<td>전공</td>
		           	<td><%=major%></td>
		           	</tr>

                    </table>
                    <br />
                    <span id="lovespan"><%=love%></span>&nbsp;<input type="button" id="love" value="호감도표시">&nbsp;&nbsp;<a style="cursor:pointer;" onclick='window.open("twitter.jsp?id=<%=mid%>")'>쪽지보내기</a>
                    <br /><br />
                    <input type="button" value="목록보기" onclick="location.href='world.jsp'">&nbsp;&nbsp;
                    <%
                    
                  }
                }catch(SQLException e){
                  out.println(e.getMessage());
                }
              %>
              </div>
            </div>
             <script type="text/javascript">
                $(document).ready(function () {
                  $('#love').click(function () {
                    location.href = 'worldInfo.jsp?name='+"<%=name%>"+'&love='+<%=love%>
                    
                  })
                })
            </script>
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