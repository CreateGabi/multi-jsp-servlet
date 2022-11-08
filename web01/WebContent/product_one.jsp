<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = request.getParameter("id");
    	
    	ProductDAO dao = new ProductDAO();
    	ProductVO bag = dao.one(id);
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
		<td>이름</td>
		<td><%=bag.getName() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=bag.getContent() %></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><%=bag.getPrice() %></td>
	</tr>
	<tr>
		<td>회사</td>
		<td><%=bag.getCompany() %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><img src="img/<%=bag.getImg() %>" width=100 height=100></td>
	</tr>
</table>
<a href="product.html">첫페이지로</a>
</body>
</html>