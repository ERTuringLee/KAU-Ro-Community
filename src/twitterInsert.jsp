<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%
	request.setCharacterEncoding("utf-8");	
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	String from = request.getParameter("from");
	String to = request.getParameter("To");
	String twit = request.getParameter("twit");
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
		st = conn.createStatement();
		st.executeUpdate("insert into twit (fr, t, twit) values('"+from+"', '"+to+"', '"+twit+"')");
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	response.sendRedirect("twitter.jsp?id="+request.getParameter("To"));
%>
