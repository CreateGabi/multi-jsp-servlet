<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 스크립트릿
    	// 쿠키는 브라우저에 텍스트로 저장되어야 햐기 때문에 문자열만 허용한다.
    	// 1. 쿠키객체 만들기
    	Cookie c1 = new Cookie("site", "naver");
    	Cookie c2 = new Cookie("callcenter", "15881234");
    	Cookie c3 = new Cookie("company", "multi");
    	
    	// 2. 쿠키를 브라우저에 심는다.
    	// 브라우저 <---- 서버 (response사용하면 됨.)
    	response.addCookie(c1);
    	response.addCookie(c2);
    	response.addCookie(c3);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
브라우저에 쿠키를 심었음. <br>
<a href="쿠키보기2.jsp">쿠키확인하러 가기</a>
</body>
</html>