<%@page import="db_connect.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MemberDAO dao = new MemberDAO();
    ArrayList<MemberVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 전체 개수 <%=list.size() %>개</h3>
<table border="1">
<tr>
	<th>아이디</th>
	<th>비밀번호</th>
	<th>이름</th>
	<th>전화번호</th>
</tr>
<%
	for(MemberVO bag : list) {
%>
<tr>
	<td><%=bag.getId() %></td>
	<td><%=bag.getPw() %></td>
	<td><%=bag.getName() %></td>
	<td><%=bag.getTel() %></td>
</tr>
<%
	}
%>
</table>
</body>
</html>