<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<link rel="icon" type="image/x-icon" href="icon/favicon.ico" />
<title>KAU路-한국항공대 커뮤니티</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
		font-family: '맑은 고딕', 'Malgun Gothic', Gothic, sans-serif;

	}
	body {
		text-align:center;
	}
</style>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	String id = request.getParameter("id");
   	String pw = request.getParameter("passwd");
   	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
   	st = conn.createStatement();
   	String query2 = "SELECT count(*) AS recordCount2 FROM member WHERE id='"+id+"'";
   	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
   	try{
   		ResultSet rs2 = st.executeQuery(query2);
   		while(rs2.next()){
   			int recordCount2 = rs2.getInt("recordCount2");
   			if(recordCount2 != 1) {
   				out.print("<h1>원하는 ID가 없거나 학번(ID)이나 비밀번호(password)를 틀렸습니다.</h1>");
   			}else{
   				PreparedStatement pstmt1 = conn.prepareStatement("SELECT * FROM member WHERE id=?");
   				pstmt1.setString(1, id);
   				ResultSet rs1 = pstmt1.executeQuery();
   				String rs1id="", rs1pw="",rs1nick="";
   				while(rs1.next()){
					rs1id = rs1.getString("id");
					rs1pw = rs1.getString("password");
					rs1nick = rs1.getString("nickname");
				}
				if(pw.equals(rs1pw)){
					session.setAttribute("MasterLoginID", id);
					session.setAttribute("MasterLoginNickname", rs1nick);
					response.sendRedirect(request.getParameter("url"));
				}else{
					out.print("<h1>원하는 ID가 없거나 학번(ID)이나 비밀번호(password)를 틀렸습니다.</h1>");
				}
   			}
   		}
   	}catch(SQLException e){
		out.println(e.getMessage());
	}
%>