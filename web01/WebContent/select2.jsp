<%@page import="db_connect.BbsDAO"%>
<%@page import="db_connect.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	
	// 2. sql문을 만들어서, db서버에 전송
	BbsDAO dao = new BbsDAO();
	BbsVO bag = dao.one(Integer.parseInt(id));
	// 3. 결과를 클라이언트에 html로 알려줌
	String title = bag.getTitle();
	String content = bag.getContent();
	String writer = bag.getWriter();
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
<%=writer %>님이 작성한 게시판 내용입니다. <hr>
아이디 >> <%=id %>번 <br>
제목 >> <%=title %> <br>
내용 >> <%=content %> <br>
작성자 >> <%=writer %> <br>
<hr>
<a href="bbs.html">앞페이지로 가기</a>
</body>
</html>