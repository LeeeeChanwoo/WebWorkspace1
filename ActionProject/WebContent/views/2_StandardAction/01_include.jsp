<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>include</h3>
	<p>또다른 페이지를 포함하고자 할 때 쓰이는 방식</p>
	
	<h4>1.기존의 include지시어를 이용한 방식(정적 include방식 == 컴파일 시 포함되는 형태)</h4>
<%-- 	<%@include file = "footer.jsp" %>
	<bR><br>
	<% String contextpath = "/main"; %>
	특징 : include하고 있는 페이지 상에 선언되어있는 변수를 현재 페이지에서 사용이 가능한데,
	동일한 이름의 변수를 선언할 수가 없었다 <br>
	현재 경로 :: <%=contextpath %> --%>

	<hr>
	
	
	
	<h4>2. JSP 표준 액션 태그를 이용한 방식 (동적 include방식 == 실제 실행시 포함되는 형태)</h4>
	
	<jsp:include page = "footer.jsp"/>
	
	<BR><br>
	
	특징1 : include하고 있는 페이지에 존재하는 변수를 공유하지 않음
	(즉, 동일한 이름의 변수 선언 가능)<br>
	<% String contextpath = request.getContextPath(); %>
	<%=contextpath %>
	<br>
	
	특징2 : 포함 시 include 하는 페이지로 값을 전달시킬 수도 있다 <br><Br>
	<jsp:include page="footer.jsp">
		<jsp:param value="test" name="test!"/>
	</jsp:include>
	
		<jsp:include page="footer.jsp">
		<jsp:param value="test" name="good bye!"/>
	</jsp:include>
</html>