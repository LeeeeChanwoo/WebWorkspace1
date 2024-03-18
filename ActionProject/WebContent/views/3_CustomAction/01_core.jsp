<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, com.kh.model.vo.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	<h3>변수(속성)</h3>

	<c:set var="num1" value="10" />
	<c:set var="num2" value="20" scope="request" />
	num1 변수값 : ${num1}
	<br> num2 변수값 : ${num2}
	<br>

	<c:set var="result" value="${num1+num2 }" scope="session" />

	result 변수값 : ${result}
	<Br>

	<!-- 변수명만 지정하여 제시하면 공유범위가 가장 적은 스코프부터 값이 찾아지게됨 -->
	${num1}
	<br> ${pageScope.num1}
	<br> ${num2}
	<br> ${requestScope.num2}
	<br> ${sessionScope.result}
	<br>

	<c:set var="result" scope="request">
	 	9999
	 </c:set>
	${result}
	<Br>

	<hr>

	삭제전 result : ${result}
	<bR> 1) 특정 scope 지정해서 삭제
	<br>
	<%-- <c:remove var="result" scope="request"/> --%>

	삭제후 result : ${result}
	<br> 2)모든 scope에서 삭제시키기
	<br>
	<c:remove var="result" />

	삭제후 result : ${result}
	<br> result :
	<c:out value="${result}" />
	<br> default를 설정한 result : result :
	<c:out value="${result}" default="없음" />
	<br>

	<!-- excapexml테스트 -->
	<c:set var="outTest" value="<b>출력테스트</b>" />
	<c:out value="${outTest}" />
	<!-- escapeXml 생략시 기본값 true : 태그로써 해석이 안됨 -->
	<c:out value="${outTest}" escapeXml="false" />
	<br>

	<c:if test="${num1 gt num2}">
		<b>num1이 num2보다 큽니다</b>
	</c:if>
	<c:if test="${num1 lt num2}">
		<b>num1이 num2보다 작습니다</b>
	</c:if>
	<br>

	<c:set var="str" value="안녕하세요" />
	<c:if test="${str eq '안녕하세요'}">

		<mark>hello</mark>
	</c:if>

	<c:if test="${str ne '안녕하세요'}">
		<mark>hello world</mark>
	</c:if>

	<c:choose>
		<c:when test="${num1 eq 20}">
			<!-- if -->
			<b>처음 뵙겠습니다</b>
		</c:when>
		<c:when test="${num1 eq 10}">
			<!-- else if -->
			<b>다시 봐서 반갑습니다</b>
		</c:when>
		<c:otherwise>
			<!-- else -->
			<b>안녕히 가세요</b>
		</c:otherwise>
	</c:choose>




	<!-- for loop -->

	<c:forEach var="i" begin="1" end='6'>
		<h ${i }> 태그안에 el표현식 사용 </h${i }>
		<br>
	</c:forEach>



	<!-- 향상for -->

	<c:set var="colors">
		red, yellow, green, pink
	</c:set>

	<ul>
		<c:forEach var="c" items="${colors}">
			<li style="color:${c}">${c}</li>
		</c:forEach>
	</ul>




	<%
		ArrayList<Person> list = new ArrayList();
		list.add(new Person("홍길동", 19, "남자"));
		list.add(new Person("홍길동2", 119, "남자"));
		list.add(new Person("홍길동3", 129, "여자"));

		request.setAttribute("list", list);//여기까지가 원래 servlet에서 작성해야했을 코드들
	%>
	<table border="1">
		<thead>
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<%-- 	<% if(list.isEmpty()) { %>
				<tr align="center">
				<td colspan="4">조회 결과가 없습니다</td>
				</tr>
			<%} else { %>
				<%for(int i=0; i<list.size(); i++) { %>
					<tr>
					<td><%=i %></td>
					<td><%=list.get(i).getName %></td>
					<td><%=list.get(i).getAge %></td>
					<td><%=list.get(i).getGender %></td>
					</tr>
				<%} %>
			<% } %> --%>

			<c:choose>
				<c:when test="${empty list}">
					<!-- if -->
					<tr align="center">
						<td colspan="4">조회 결과가 없습니다</td>
					</tr>
				</c:when>
				<c:otherwise>
					<!-- else -->
					<!-- 기본 반복문 -->
					<c:forEach var="i" begin="0" end='${list.size()-1}'>
						<tr>
							<td>${i}</td>
							<td>${list.get(i).name}</td>
							<td>${list.get(i).age}</td>
							<td>${list.get(i).gender}</td>
						</tr>
					</c:forEach>
					
					<c:set var="count" value="0"/>
					<c:forEach var="persohttps://map.naver.com/v5/n" items="${list}" varStatus='status'>
						<c:set var="count" value="${count+1 }"/>
						<tr>
						<td>${count }</td>
							<%-- <td>${status.index}</td> --%>
							<!-- 
								status의 속성값
								index : 0부터 시작
								count : 1부터 시작
								first : 첫 반복 시 true / 그 외 false
								last : 마지막 반복시 true / 그 외 false
							 -->
							<td>${person.name}</td>
							<td>${person.age}</td>
							<td>${person.gender}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

	
	
	<c:set var="device" value="컴퓨터,핸드폰,TV/에어컨.냉장고!세탁기"/>
	
	<ul>
		<c:forTokens var="de" items="${device }" delims=",/.!">
			<li>${de }</li>
		</c:forTokens>
	</ul>
	
	
	
	<a href="list.do?cPage=1&keyword=mkm&category=name">기존방식</a><br>
	
	<c:url var="query" value ="list.do">
		<c:param name="cPage" value="1"/>
		<c:param name="keyword" value="mkm"/>
		<c:param name="category" value="name"/>
	</c:url>
	<a href="${query }">c:url을 활용한 방식</a>
	
	<c:import url = "/el.do">
	</c:import>
	
	<%-- <c:redirect url = "/"></c:redirect> --%>
	
	
	
	
</body>
</html>