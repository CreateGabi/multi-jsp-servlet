<%@page import="db_connect.BbsDAO"%>
<%@page import="db_connect.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	// 2. sql문을 만들어서, db서버에 전송
	BbsDAO dao = new BbsDAO();
	dao.delete(Integer.parseInt(id));
	// 3. 결과를 클라이언트에 html로 알려줌
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: orange;
}
</style>
</head>
<body>
삭제 완료. <hr>
아이디 >> <%=id %>번 <br>
<hr>
<a href="bbs.html">앞페이지로 가기</a>
</body>
</html>