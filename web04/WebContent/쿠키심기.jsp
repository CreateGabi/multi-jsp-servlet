<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 스크립트릿
    	// 쿠키는 브라우저에 텍스트로 저장되어야 햐기 때문에 문자열만 허용한다.
    	// 1. 쿠키객체 만들기
    	Cookie c1 = new Cookie("name", "honggildong");
    	Cookie c2 = new Cookie("age", "100");
    	
    	// 2. 쿠키를 브라우저에 심는다.
    	// 브라우저 <---- 서버 (response사용하면 됨.)
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
브라우저에 쿠키를 심었음. <br>
<a href="쿠키보기.jsp">쿠키확인하러 가기</a>
</body>
</html>