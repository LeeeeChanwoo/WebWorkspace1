<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립팅 원소</title>
<%!String name; %>
</head>
<body>
	<h1>스크립팅 원소</h1>
	<%
		//스크립틀릿 : 이 안에 자바소스코드 작성
		int sum=0;
		for(int i=1; i<=100;i++) {
			sum+=i;
		}
		System.out.println("덧셈끝!!  결과: "+sum);
	%>
	<p>
		화면으로 출력 <br>
		스크립틀릿을 이용해서 출력 가능 : <% out.println(sum); %> <br>
		표현식(출력식)으로 출력 가능 : <%= sum %>
	</p>
	<%
	//배열
	String [] names = {"민경민", "고창윤","정승훈","최미선"};
	%>
	<h5>배열길이 : <%= names.length %></h5>
	<%= names %><br>
	<%= String.join(",",names) %>
	<h4>반복문을 통해 html 요소들을 반복적으로 화면에 출력</h4>
	<ul>
	<% for(int i=0;i<names.length;i++) {%>
	<li> <%=names[i] %></li>
	<% }%>
	<li></li>
	</ul>
</body>
</html>