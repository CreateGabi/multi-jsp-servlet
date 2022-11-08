<%@page import="db_connect.BbsVO"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = request.getParameter("id");
    	
    	BbsDAO dao = new BbsDAO();
    	BbsVO bag = dao.one(Integer.parseInt(id));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<h3>검색된 결과입니다.</h3>
<hr>
번호 : <%=bag.getId() %> <br>
제목 : <%=bag.getTitle() %> <br>
내용 : <%=bag.getContent() %> <br>
작성자 : <%=bag.getWriter() %> <br>

<table class="table-dark table">
	<tr>
		<th>항목명</th>
		<th>데이터</th>
	</tr>
	<tr>
		<td>번호</td>
		<td><%=bag.getId() %></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><%=bag.getTitle() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=bag.getContent() %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=bag.getWriter() %></td>
	</tr>
</table>
<a href="bbs_one.html">게시물검색페이지로</a>
<a href="bbs2.html">첫페이지로</a>
</body>
</html>