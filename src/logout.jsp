<%@ page contentType="text/html;charset=utf-8" %>
<%
   session.invalidate();  // 세션의 무효화
   response.sendRedirect(request.getParameter("url"));
%>