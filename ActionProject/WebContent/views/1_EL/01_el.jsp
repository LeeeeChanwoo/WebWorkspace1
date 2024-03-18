<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import ="com.kh.model.vo.Person" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>
		1. 기존 작업방식대로 스크립틀릿과 표현식을 활용해서 각 영역 (scope)에 담겨있는 값 뽑아서 화면에 출력
	</h3>
	
	<%
		//requestScope에 담긴 값 뽑기
		String classRoom = (String) request.getAttribute("classRoom");//d강의장
		Person student = (Person) request.getAttribute("student");//person객체
	
		//sessionScope에 담긴 값 뽑기
		String academy = (String) session.getAttribute("academy");
		Person teacher = (Person) session.getAttribute("teacher");
	%>
	
	<p>
		학원명 : <%=academy %><br/>
		강의장 : <%= classRoom %><br>
		강사정보 : 민경민, <%=teacher.getAge() %>,<%=teacher.getGender() %><Br/>
		수강생 정보 :
		<ul>
			<li>이름 : ㅇㅇㅇ </li>
			<li>나이 : <%=student.getAge() %></li>
			<li>성별 : <%=student.getGender() %></li>
		</ul>
	</p>
	
	
	<h3>2. EL을 이용해서 쉽게 해당 Scope에 저장된 값들 출력하기</h3>
	<p>
		EL은 getXXX를 통해 값을 빼올 필요 없이 키값만 제시하면 곧바로 접근가능 <br>
		내부적으로 해당 Scope영역에 키값의 벨류값을 가져올 수 있다
		기본적으로 EL은 jsp 내장객체를 구분하지 않고 자동적으로 모든 내장객체에
		키값을 검색해서 존재하는 경우 값을 가져옴
	</p>
	
	<p>
		학원명 : ${academy}<br>
		강의장 : ${classRoom}<br>
		강사정보 : ${teacher.name}, ${teacher.age}, ${teacher.gender}
		<!-- teacher에 접근 했을떄 벨류값의 자료형은 Person임
			해당 Person 객체의 각 필드에 담긴 값을 출력하고자 한다면, .필드명으로 접근하면됨
			내부적으로 getter 메소드를 찾아서 실행됨 (즉 getter메소드는 항상 만들어야함 -->
		수강생정보
		<ul>
			<li>이름 : ㅇㅇㅇ</li>
			<li>나이 : ${student.age }</li>
			<li>성별 : ${student.gender }</li>
		</ul>
	</p>
	
	<h3>3. EL 사용할 때 내장객체들에 저장된 키값이 동일한경우
		scope값 : ${scope} <br>
		<!-- 
			EL은 공유범위가 제일 작은 Scope에서부터 제시된 키값을 검색함
			page -> request -> session -> application 순
			
			만약 모든 영역에서 못 찾을 경우 -> 아무것도 출력 안됨
		 -->
	</h3>
	<hr>
	<h3>4. 직접 Scope 영역을 지정해서 접근하기</h3>
	<%
		pageContext.setAttribute("scope","page");
	
	%>
	pageScope에 담긴 값 : ${scope} 또는 ${pageScope.scope }<br>
	requestScope에 담긴 값 : ${requestScope.scope }<br>
	sessionScope에 담긴 값 : ${sessionScope.scope }<br>
	applicationScope에 담긴 값 : ${applicationScope.scope }<br><br>
	
	<h2>EL을 활용한 연산</h2>
	
	<h3>1. 산술연산</h3>
	<p>
		*기존 방식<br>
		10+3 = <%= (int) request.getAttribute("big") + (int) request.getAttribute("small")%>
	</p>
	<p>
		*EL 방식 연산<br>
		10+3 = ${big+small}<br>
		10-3 = ${big-small}<br>
		10*3 = ${big*small}<br>
		10/3 = ${big/small} 또는 ${big div small}<br>
		10%3 = ${big%small} 또는 ${big mod small}<br>
	</p>
	
	<h3>2. 숫자간의 대소비교 연산</h3>
	<p>
		*el연산<br>
		10 > 3 : ${big > small } 또는 ${big gt small} <br>
		10 < 3 : ${big < small } 또는 ${big lt small} <br>
		10 >= 3 : ${big >= small} 또는 ${big ge small} <br>
		10 <= 3 : ${big <= small} 또는 ${big le small} <br>
	</p>
	<h3> 3. 동등비교연산</h3>
	<p>
		*el연산 <br>
		10과 3일 일치합니까? ${big == small} 또는 ${big eq small} <br>
		big에 담긴 값이 10과 일치합니까? ${big == 10} 또는 ${big eq 10} <br>
	
		sOne과 sTwo가 일치합니까? ${sOne == sTwo } 또는 ${sOne eq sTwo }<br>
		<!-- EL에서 ==비교는 자바에서의 equals()와 같은 동작을 한다 (주소값이 아닌 값 비교)-->
		
		sOne과 sTwo가 일치하지 않습니까? ${sOne != sTwo} 또는 ${sOne ne sTwo }<br>
		sOne 안에 담긴 값이 "안녕"과 일치합니까? ${sOne == '안녕' }, ${sOne == "안녕"}
		<!-- EL에서 문자열 리터럴 제시시 '' "" 상관이 없다 -->
	</p>
	
	<h3>4. 객체가 null인지 또는 리스트가 비어있는지 체크하는 연산</h3>
	<p>
	*EL 연산 <br>
	pTwo가 null입니까? ${pTwo==null}또는 ${empty pTwo}<br>
	pOne이 null입니까? ${pOne==null} 또는 ${empty pOne}<br>
	lOne이 비어있습니까 ? ${empty lOne} <br>
	lTwo가 비어있습니까 ? ${empty lTwo} <br>
	</p>
	
	
	<h3>5. 논리연산자</h3>
	<p>
	*EL연산 <br>
	AND연산 : ${true && true } 또는 ${true and true } <br>
	OR 연산 : ${true||false} 또는 ${true or false} <br>
	</p>
	
	<h3>
	<p>
	*EL연산에서 배운 "키워드"만 가지고 써볼것
	1. big이 small보다 크고 lOne이 텅 비어있습니까? <br>
	
		${empty lOne and big gt small} <br>
		
	2. big과 small의 곱은 4의 배수입니까? <br>
		${ big*small mod 4 eq 0} <br>
	3. lTwo가 텅 비어있지 않거나 또는 sOne에 담긴 값이 "안녕하세요"와 일치합니까? <br>
		${ !empty lTwo or sOne eq '안녕하세요'}
	</p>
	</h3>	
</body>
</html>