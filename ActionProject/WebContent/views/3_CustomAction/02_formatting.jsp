<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="num1" value="123456789"/>
<c:set var="num2" value="0.75"/>
<c:set var="num3" value="50000"/>

기본 출력 : ${num1} <br>
세자리마다 구분하여 출력 : <fmt:formatNumber value="${num1 }"/> <br>
숫자 그대로 출력 : <fmt:formatNumber value="${num1 }" groupingUsed="false"/><br>
<!-- 
	groupingUsed : true(기본값) -> (,로 구분자가 찍힌다) 
-->

percent : <fmt:formatNumber value="${num2 }" type="percent"/><br> 
<!-- 
	type="percent" : 소수점을 백분율로 변경해서 보여줌
-->

currency : <fmt:formatNumber value="${num3 }" type="currency"/><br>
<!-- 
	type="currency" : 통화(돈) 단위로 보여짐
					현재 내가 쓰고 있는 컴퓨터의 로컬 정보에 따라서 정해진다
 -->
 currency : <fmt:formatNumber value="${num3 }" type="currency" currencySymbol="$"/><br>
<!-- 
	currencySymbol : 통화기호 문자의 종류 지정
 -->
 
 <c:set var='current' value="<%=new java.util.Date() %>"/>
 
 그냥 출력시 : ${current }<br>
 <ul>
 	<li>
 	 현재 날짜 : <fmt:formatDate value="${current }" type="date"/>
 	 <!-- type 속성은 생략 가능, 생략시 기본값이 date -->
 	</li>
 	<li>
 	현재 시간 : <fmt:formatDate value="${current }" type="time"/>
 	</li>
 	<li>
 	현재 날짜 및 시간 : <fmt:formatDate value="${current }" type="both"/>
 	</li>
 	
 	<li>
 	long: <fmt:formatDate value="${current }" type="both" dateStyle="long" timeStyle="long"/>
 	</li>
 	<li>
 	short: <fmt:formatDate value="${current }" type="both" dateStyle="short" timeStyle="short"/>
 	</li>
 	<li>
 	full: <fmt:formatDate value="${current }" type="both" dateStyle="full" timeStyle="full"/>
 	</li>
 	<li>
 	medium: <fmt:formatDate value="${current }" type="both" dateStyle="medium" timeStyle="medium"/>
 	</li>
 	<li>
 	customizing: <fmt:formatDate value="${current }" type="long"
 					pattern="yyyy-MM-dd HH:mm:ss"
 	/>
 	</li>
 </ul>
</body>
</html>