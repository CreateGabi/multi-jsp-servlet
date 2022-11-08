<%@page import="db_connect.BbsDAO"%>
<%@page import="db_connect.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	BbsVO bag = new BbsVO();
	bag.setId(Integer.parseInt(id));
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	// 2. sql문을 만들어서, db서버에 전송
	BbsDAO dao = new BbsDAO();
	dao.insert(bag);
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
<%=writer %>님이 작성한 게시판 내용입니다. <hr>
아이디 >> <%=id %>번 <br>
제목 >> <%=title %> <br>
내용 >> <%=content %> <br>
작성자 >> <%=writer %> <br>
<hr>
<a href="bbs.html">앞페이지로 가기</a>
</body>
</html>