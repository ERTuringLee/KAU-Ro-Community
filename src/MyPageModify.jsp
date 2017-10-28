<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
java.io.File" %>
<%@ page import="thinkonweb.util.*" %>
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
	String non;
	int nonpub=0;
	String fileName;
	File file;
	MultipartRequest multi;
	String realFileName;
	File oldFile;
	File newFile;
	int insertid=0;
%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs =null;
	String savePath=application.getRealPath("/LEE-LIM/member");
	int sizeLimit = 10 * 1024 * 1024 ;
	
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
	}catch(ClassNotFoundException e){
		out.println(e.getMessage()+"<br>");
	}
	try{

		multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
		file = multi.getFile("image");
		fileName=file.getName();
	    int i = -1;
	    i = fileName.lastIndexOf("."); // 파일 확장자 위치
	    realFileName = multi.getParameter("id") +"-"+fileName;  //현재시간과 확장자 합치기
	    oldFile = new File(savePath +"/"+ fileName);
	    newFile = new File(savePath+ "/"+ realFileName); 
    	oldFile.renameTo(newFile); // 파일명 변경
    	picture = newFile.getName();
    	mid = multi.getParameter("id");
    	name= multi.getParameter("name");
    	nickname= multi.getParameter("nickname");
    	email= multi.getParameter("email");
    	password = multi.getParameter("password");
    	studentNumber = Integer.parseInt(multi.getParameter("studentNumber"));
    	major = multi.getParameter("major");
    	gender= multi.getParameter("gender");
    	introduce= multi.getParameter("introduce");
    	
    	
	}catch(Exception e){
		out.println(e.getMessage());
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
		st = conn.createStatement();
		st.executeUpdate("update member set name='"+name+"',email='"+email+"' ,password='"+password+"', studentNumber="+studentNumber+",major='"+major+"',gender='"+gender+"',introduce='"+introduce+"', picture='member/"+picture+"' where id='"+mid+"'");
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	st.close();
	conn.close();
	response.sendRedirect("MyPage.jsp?id="+mid);
%>