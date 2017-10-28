<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<form name="frm" action="idfind.jsp" method="post">
<table border="1"style="border-collapse:collapse;">
				<TR>
					<TD>이름</TD>
					<TD><INPUT TYPE="text" NAME="name" SIZE="15"></TD>
				</TR>
				<TR>
					<TD>학번</TD>
					<TD><INPUT TYPE="text" NAME="hakbun" SIZE="15"></TD>
				</TR>
				<TR>
					<TD>E-mail</TD>
					<TD><INPUT TYPE="text" NAME="email" SIZE="15"></TD>
				</TR>
				<TR>
					<TD COLSPAN="2" ALIGN="center">
					<INPUT TYPE="submit" VALUE="아이디 찾기" onClick="check_form()">&nbsp;&nbsp; 
				</TR>
				</TABLE>
				</form>
				
</body>
</html>