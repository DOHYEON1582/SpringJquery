<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="orange">
	<h1>stringData1.jsp</h1>
	
	<h2>안녕하세요! <%="아이티윌" %></h2>
	<%
		System.out.println("stringData1.jsp 실행");
		
		// 전송한 데이터 저장
		String name = request.getParameter("name");
	%>
	
	<h3> 전송된 데이터 : <%=name %></h3>
</body>
</html>