<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String pizza = (String) request.getAttribute("pizza");
String[] toppings = (String[]) request.getAttribute("toppings");
String[] sides = (String[]) request.getAttribute("sides");
int price = (int) request.getAttribute("price");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>주문내역</h1>
	주문하신 피자는 <span id='pizza'><%=pizza%></span>,
	토핑은
	<span id='topping'>
	<% if (toppings != null) { %>
		<% for (String topping : toppings) { %>
			<%=topping%>,
		<%}%>
	<%}%>
	</span>
	사이드는
	<span id='side'>
	<% if (sides != null) { %>
		<%=String.join(",",sides)%>,
	<%}%>
	</span>
	<br><br><br>
	총합 : <%=price%> 원
</body>
</html>