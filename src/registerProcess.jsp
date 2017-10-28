<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	request.setCharacterEncoding("utf-8");
	String id =request.getParameter("id");
	String password =request.getParameter("pass1");
	String nickname =request.getParameter("nick");
	String name =request.getParameter("name");
	String studentNumber =request.getParameter("hakbun");
	String major =request.getParameter("major");
	String email =request.getParameter("email");
	String gender =request.getParameter("gender");
	String introduce =request.getParameter("intro");
	String nonpub =request.getParameter("nonpub");
	out.println(nonpub);
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf-8", "root", "dbxkstk8522");
		
		st = conn.createStatement();
		if(nonpub!=null){
			st.executeUpdate("insert into member (id, password, nickname, email, name, studentNumber, major, gender, introduce, picture, nonpub, love) values('"+id+"','"+password+"','"+nickname+"','"+email+"','"+name+"', "+studentNumber+", '"+major+"', '"+gender+"', '"+introduce+"', null, 1, 0);");
		}else{
			st.executeUpdate("insert into member (id, password, nickname, email, name, studentNumber, major, gender, introduce, picture, nonpub, love) values('"+id+"','"+password+"','"+nickname+"','"+email+"','"+name+"', "+studentNumber+", '"+major+"', '"+gender+"', '"+introduce+"', null, 0, 0);");
		}
		
	}catch(SQLException e){
		out.println(e.getMessage());


	}
	conn.close();
		response.sendRedirect("/jspbook/LEE-LIM");
%>