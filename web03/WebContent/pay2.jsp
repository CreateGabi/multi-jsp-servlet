<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String impId = request.getParameter("impId");
    String merchantId = request.getParameter("merchantId");   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
고유id : <%= impId  %>원 <br>
상점id : <%= merchantId %> 번
</body>
</html>