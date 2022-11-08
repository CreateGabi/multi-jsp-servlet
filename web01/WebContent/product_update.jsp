<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<!-- @ : page 지시자(tomcat WAS에게!) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 스크립트릿(scriptlet--> 자바코드를 쓰는 부분)
    	// HttpServletRequest request = new HttpServletRequest(); // 내장된 객체
    	String id = request.getParameter("id");
    	String content = request.getParameter("content");
    	
    	ProductVO bag = new ProductVO();
    	bag.setId(id);
    	bag.setContent(content);
    	
    	ProductDAO dao = new ProductDAO();
    	dao.update(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 수정 정보 확인</h3>
<hr>
id : <%=id %> <br>
content : <%=content %> <br>
<hr>
<a href="product_update.html">상품수정페이지로</a>
<a href="product.html">첫페이지로</a>
</body>
</html>