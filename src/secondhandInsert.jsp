<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
java.io.File" %>
<%@ page import="thinkonweb.util.*" %>
<%!
	String title;
	int date=0;
	Date dates = new Date();
	String writer;
	String password;
	String fileName;
	String content;
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
	String savePath=application.getRealPath("/LEE-LIM/secondhand");
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
    	
    	title = multi.getParameter("title");
    	writer= multi.getParameter("writer");
    	password = multi.getParameter("password");
    	content = multi.getParameter("content");
    	date = ((dates.getYear()+1900)*10000)+((dates.getMonth()+1)*100)+dates.getDate();
	}catch(Exception e){
		out.println(e.getMessage());
	}
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?useUnicode=true&characterEncoding=utf8", "root", "dbxkstk8522");
		st = conn.createStatement();
		st.executeUpdate("insert into secondhand (title, content,name, date,hits, file,password) values('"+title+"','"+content+"','"+writer+"',"+date+",0, 'secondhand/"+newFile.getName()+"', '"+password+"')");
		rs = st.executeQuery("select * from secondhand");
		while(rs.next()){
			insertid=rs.getInt("id");
		}
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	st.close();
	conn.close();
	response.sendRedirect("secondhand.jsp?id="+insertid);
%>