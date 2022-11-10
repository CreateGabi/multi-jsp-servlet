<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	String pwd = request.getParameter("pwd");
    	String name = request.getParameter("name");
    	String date = request.getParameter("date");
    	String tel = request.getParameter("tel");
    	String email = request.getParameter("email");
    	String gender = request.getParameter("gender");
    	String introduction = request.getParameter("introduction");
    	String[] hobby = request.getParameterValues("hobby");
    	String result = "";
    	for (String s : hobby) {
    		result = result + s + " ";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버에서 받은 id >> <%=id %> <br>
서버에서 받은 pwd >> <%=pwd %> <br>
서버에서 받은 name >> <%=name %> <br>
서버에서 받은 date >> <%=date %> <br>
서버에서 받은 tel >> <%=tel %> <br>
서버에서 받은 email >> <%=email %> <br>
서버에서 받은 gender >> <%=gender %> <br>
서버에서 받은 관심사 >> <%=result %> <br>
서버에서 받은 하고싶은 말 >> <%=introduction %> <br>
</body>
</html>