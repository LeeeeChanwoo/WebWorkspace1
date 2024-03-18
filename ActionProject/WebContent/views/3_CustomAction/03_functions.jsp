<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="str" value="How are you?"/>
	
	str:${str }<Br>
	
	문자열의 길이 : ${fn:length(str)} 글자 <br>
	문자열의 길이 : ${str.length()} 글자 <br>
	
	모두 대문자로 출력 : ${fn:toUpperCase(str)}<br>
	모두 소문자로 출력 : ${fn:toLowerCase(str)}<br>
	
	are의 시작 인덱스 : ${fn:indexOf(str,"are")}<br>
	are을 were로 변경 : ${fn:replace(str,"are","were")}<br>
	<!-- 원본 데이터에는 영향을 끼치지 않음 -->
	
	str에 "are" 이라는 문자열이 포함되어있나?
	<c:if test="${fn:contains(str,'are')}">
		포함되어있음
	</c:if>
	
</body>
</html>