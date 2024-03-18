<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>EL (Expression Language) 표현언어</h1>
	<p>
	기존에 사용했던 표현식 (출력식) &lt;%=name %&gt;와 같이 <br>
	JSP상에서 표현하고자 하는 값을 \{name}의 형식으로 표현해서 작성하는 것
	</p>
	
	<h3>1. EL기본구문에 대해서 먼저 배워보기</h3>
	<a href = "/action/el.do">01_EL</a>
	
	<!--
		JSP를 이루는 구성인자
		1. JSP 스크립팅 원소 : JSP 페이지 내에서 자바코드를 직접 기술할 수 있게 해주는 기술
		2. 지시어 : JSP 페이지 정보에 대한 내용을 표현한다거나, 또다른 페이지를 포함할 때 사용
		EX) Page 지시어, include 지시어, taglib 지시어
		
		3. JSP 액션 태그 :
			-표준 액션태그 : 추가 설치 없이 JSP 페이지 내에서 바로 사용 가능, 
			모든 태그명 앞에 jsp: 접두어가 붙는다
			- 커스텀 액션 태그 : jsp 페이지 내에서 바로 사용 불가능 (연동이 필요함)
			커스텀 액션태그는 모든 태그명 앞에 또다른 접두어가 붙는다
			제공되고 있는 대표적인 라이브러리 (JSTL) 
	 -->
	<h1>* jsp Action Tag</h1>
	<p>
	XML 기술을 이용해서 기존의 JSP 문법을 확장시키는 기술을 제공하는 태그들
	</p>
	
	<h3>1.표준액션태그</h3>
	<p>
		JSP 페이지에서 별도의 라이브러리 연동 없이 곧바로 사용 가능함<br>
		태그 앞에 jsp: 접두어가 붙음
	</p>
	
	<a href = "views/2_StandardAction/01_include.jsp">01_jsp:include</a><br>
	<a href = "views/2_StandardAction/02_forward.jsp">02_forward</a><br>

	<h3>커스텀 액션 태그</h3>
	<a href = "views/3_CustomAction/jstl.jsp">JSTL</a>
</body>
</html>