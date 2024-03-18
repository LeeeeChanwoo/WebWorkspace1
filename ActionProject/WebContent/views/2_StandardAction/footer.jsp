<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String contextpath = request.getContextPath();
	%>
	
	<br>
	
	현재 경로 : <%=contextpath %>
	
	<br>
	test ::::: ${param.test }
</body>
</html>