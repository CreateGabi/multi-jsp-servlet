<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   	// 1. 보낸 데이터를 받자.
   	String id = request.getParameter("id");
    String name = request.getParameter("name");
    String company = request.getParameter("company");
    String code = request.getParameter("code");
    
   	// 2. JDBC프로그래밍
   	// 3. 결과를 보내자
   	// jsp 자동 import : ctrl + shift + m
   	// 2-1) 드라이버 설정
    Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. db연결 mySQL: school, oracle: xe
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	Connection con = DriverManager.getConnection(url, user, password);

	// 3. sql문을 만든다.
	String sql = "insert into drug values (?, ?, ?, ?)";
	// 준비된 문장(Preparedstatement)
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, company);
	ps.setString(4, code);

	// 4. sql문을 db서버에 보낸다.
	int result = ps.executeUpdate();
	
	con.close();
	ps.close();
    %>