<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%
request.setCharacterEncoding("utf-8");
String name1 = request.getParameter("name");
String hakbun1 = request.getParameter("hakbun");
String email1 = request.getParameter("email");
Connection conn = null;
Statement st = null;
ResultSet rs =null;
ResultSet rs2 =null;
 try{
                  Class.forName("org.gjt.mm.mysql.Driver");
                }catch(ClassNotFoundException e){
                  out.println(e.getMessage()+"<br>");
                }
try{
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
	st = conn.createStatement();
	rs = st.executeQuery("select count(*) AS recordCount2 from member where name='"+name1+"'");
	
	 while(rs.next()){
	 	int recordCount2 = rs.getInt("recordCount2");
	 	
	 	if(recordCount2 == 1) {
	 		break;
	  	}
  		else
  		{
  			out.print("일치하는 아이디가 없습니다");
  		}
	}
	rs2 = st.executeQuery("select * from member where name='"+name1 +"'");	
	while(rs2.next()){
		if(email1.equals(rs2.getString("email"))&&hakbun1.equals(""+rs2.getInt("studentNumber"))&&name1.equals(rs2.getString("name"))){
			out.print(rs2.getString("id"));
		
		}else{
			out.print("일치하는 아이디가 없습니다.");
		}
	}
}catch(SQLException e){
		out.println(e.getMessage());
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID찾기 결과</title>
</head>
<body>

</body>
</html>