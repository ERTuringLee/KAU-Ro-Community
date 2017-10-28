<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
		st = conn.createStatement();
		st.executeUpdate("delete from board where id="+request.getParameter("id"));
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	st.close();
	conn.close();
	response.sendRedirect("free.jsp");
	
%>