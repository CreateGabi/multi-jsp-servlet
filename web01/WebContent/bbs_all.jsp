<%@page import="db_connect.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BbsDAO dao = new BbsDAO();
    ArrayList<BbsVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시물 전체 개수 <%=list.size() %>개</h3>
<table border="1">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>내용</th>
	<th>작성자</th>
</tr>
<%
	for(BbsVO bag : list) {
%>
<tr>
	<td><%=bag.getId() %></td>
	<td>
	<a href="http://localhost:8989/web01/one.jsp?id=<%=bag.getId()%>">
	<%=bag.getTitle() %>
	</a>
	</td>
	<td><%=bag.getContent() %></td>
	<td><%=bag.getWriter() %></td>
</tr>
<%
	}
%>
</table>
</body>
</html>