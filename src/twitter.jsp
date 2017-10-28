<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Date" %>
<form action="twitterInsert.jsp" method="post">
<table border="1">
<tr>
	<td>From</td>
	<td style="width:200px;"><input style="width:100%;" type="text" name="from"></td>
</tr>
<tr>
	<td>To</td>
	<td><input style="width:100%;" type="text" name="To" value='<%=request.getParameter("id")%>'></td>
</tr>
<tr>
<td>내용</td>
<td><textarea style="width:100%;"name="twit"></textarea></td>
</tr>
</table>
<br />
<input type="submit" value="전송">&nbsp;
</form>