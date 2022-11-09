<%@page import="db_connect.MovieVO"%>
<%@page import="db_connect.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = request.getParameter("id");
    	
    	MovieDAO dao = new MovieDAO();
    	MovieVO bag = dao.one(id);
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
<table class="table-dark table">
	<tr>
		<th>항목명</th>
		<th>데이터</th>
	</tr>
	<tr>
		<td>아이디</td>
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
		<td>배우</td>
		<td><%=bag.getActor() %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><img src="img/<%=bag.getImg() %>"></td>
	</tr>
</table>
<a href="movie_all.jsp">이전페이지로</a>
</body>
</html>