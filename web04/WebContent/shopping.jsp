<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쇼핑화면</h3>
<hr color="red">
로그인한 사람 <%=session.getAttribute("id") %>
<%
	if(session.getAttribute("id") != null) {
%>
<ul>
	<li>운동화</li>
	<li>커피</li>
	<li>물병</li>
</ul>
<%	}else{
%>
<script type="text/javascript">
	alert('로그인화면으로 넘어갑니다.')
	location.href = "login.html"
</script>
<%
	}
%>
</body>
</html>