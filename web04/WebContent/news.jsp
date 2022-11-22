<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>뉴스화면</h3>
<hr color="red">
로그인한 사람 <%=session.getAttribute("id") %>
<%
	if(session.getAttribute("id") != null) {
%>
<form action="">
댓글 : <input> <br>
<button>댓글달기</button>
</form>
<%
	}else{
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