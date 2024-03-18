<%@ page import="java.util.ArrayList, java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- errorPage="error500.jsp"--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어</title>
</head>
<body>
	<h1>page 지시어</h1>
	<%
		//arraylist 사용
	ArrayList<String> list = new ArrayList();
	list.add("servlet");
	list.add("jsp");

	// import하고자 할 클래스들이 여러개일 경우 ,로 연이어서 작성
	Date today = new Date();
	%>

	<P>
		리스트길이는
		<%=list.size()%><br> 0번인덱스의 값?
		<%=list.get(0)%><br> 1번 인덱스의 값?
		<%=list.get(1)%><br> 현재 날짜 및 시간 :
		<%=today%>
	</P>
	<%-- <%=list.get(10)%> 
주석을 풀면 에러페이지로 이동
--%>
</body>
</html>