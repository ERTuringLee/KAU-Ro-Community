<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%!
  String picture = null;
  String name = null;
  int studentNumber = 0;
  String major = null;
  String gender = null;
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
         <div id="left-section">
            <h1>KAU World</h1>
            <hr />
            <br />
            <%
              String UserId2;
              UserId2 = (String)session.getAttribute("MasterLoginID");
              boolean isLogin2=false;
              if (UserId != null) {
                isLogin2 = true; 
              }else{
                isLogin2 = false;
             }
              if(isLogin2){
            %>
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                  <tr height="5"></td></tr>
             <tr style=" text-align:center;">
               <td style="width:15%;">사진</td>
               <td style="width:10%;">이름</td>
               <td style="width:15%;">학번</td>
               <td style="width:30%;">전공</td>
               <td style="width:15%;">성별</td>
              </tr>
              <%
                try{
                  Class.forName("org.gjt.mm.mysql.Driver");
                }catch(ClassNotFoundException e){
                  out.println(e.getMessage()+"<br>");
                }
                try{ 
                  st = conn.createStatement();
                  rs = st.executeQuery("select * from member");
                  while(rs.next()){
                    picture = rs.getString("picture");
                    name = rs.getString("name");
                    studentNumber = rs.getInt("studentNumber");
                    major = rs.getString("major");
                    gender = rs.getString("gender");
                    int non = rs.getInt("nonpub");
                    if(non!=1){
                      out.println("<tr style='text-align:center;'>");
                      out.println("<td style='width:15%;'><img style='width:12.5%;' src='"+picture+"'></td>");
                      out.println("<td style='width:10%;'><a href='worldInfo.jsp?name="+name+"'>"+name+"</a></td>");
                      out.println("<td style='width:15%;'>"+studentNumber+"</td>");
                      out.println("<td style='width:30%;'>"+major+"</td>");
                      out.println("<td style='width:15%;'>"+gender+"</td>");
                      out.println("</tr>");
                    }
                    
                  }
                }catch(SQLException e){
                  out.println(e.getMessage());
                }
              %>

             </table>
             
              <%
                }else{
                String URL = (String)request.getRequestURI();
             
               %>
               <span style="position:relative;left:10px" id="inputform">
                <form action="loginProcess.jsp" method="post">
                  <input type="text" hidden value=<%=URL%> name="url">
                  ID: <input type = "text" id="idField2" name="id" style="width:150px;"><br>
                  PW: <input type = "password" id="passwordField2" name="passwd" style="width:145px;" ><br>
                  <input type="submit" value="로그인" id="loginButton2" style="background-color:#BBBBBB;border-radius:5px;">
                  &nbsp;&nbsp;
                </form>
                <a href="register.jsp" id="register">회원가입</a>&nbsp;&nbsp;
                <a href="found.jsp" id="id&passwd">ID/비밀번호 찾기</a>
              </span>
              <script>
                $(document).ready(function () {
                  $('body').on('click', '#loginButton2', function (event) {
                    if($('#idField2').val()==""){
                      alert('아이디를 입력하시오.');
                      event.preventDefault();
                    }else if($('#passwordField2').val()==""){
                      alert('비밀번호를 입력하시오.');
                      event.preventDefault();
                    }
                  })
                });
              </script>
              <%
               }
              %>
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