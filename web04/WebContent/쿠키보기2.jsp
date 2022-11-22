<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie[] cookies = request.getCookies();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키의 개수 : <%=cookies.length-1 %>개 <br>
<%
for(Cookie c : cookies) {
	if(!c.getName().equals("JSESSIONID")) {
		out.print(c.getName() + ", " + c.getValue() + "<br>");
	}
}
%>
</body>
</html>