<%@page import="db_connect.MovieVO"%>
<%@page import="db_connect.MovieDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MovieDAO dao = new MovieDAO();
    ArrayList<MovieVO> list = dao.list();
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
<h3>영화 전체 개수 <%=list.size() %>개</h3>
<table class="table table-hover">
<tr>
	<th>아이디</th>
	<th>제목</th>
	<th>내용</th>
	<th>배우</th>
	<th>이미지</th>
</tr>
<%
	for(MovieVO bag : list) {
%>
<tr>
	<td><%=bag.getId() %></td>
	<td>
	<a href="http://localhost:8989/web01/movie_one.jsp?id=<%=bag.getId()%>">
	<%=bag.getTitle() %>
	</a>
	</td>
	<td><%=bag.getContent() %></td>
	<td><%=bag.getActor() %></td>
	<td>
	<a href="<%=bag.getUrl() %>">
	<img src="img/<%=bag.getImg() %>">
	</a>
	</td>
</tr>
<%
	}
%>
</table>
</body>
</html>