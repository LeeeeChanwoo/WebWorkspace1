<%@ page import="java.util.Date , java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #today{color:pink;}
   th{border:1px solid black;}
   tr{border:1px solid black;}
   td{border:1px solid black;}
</style>
</head>
<body>
   <%
      Date date = new Date();
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E");
      String today = sdf.format(date);
   %>

   <h4>오늘은 <span id="today"><%=today %>요일</span> 입니다.</h4>
   
   <h3>피자 아카데미</h3>
   
   <table style="border-collapse: collapse; border:1px solid black;">
      <tr>
         <th>종류</th>
         <th>이름</th>
         <th>가격</th>
         <th rowspan='12'></th>
         <th>종류</th>
         <th>이름</th>
         <th>가격</th>
      </tr>
      <tr>
         <td rowspan="5">피자</td>
         <td>치즈피자</td>
         <td>5000</td>
         <td rowspan="11">사이드</td>
         <td>오븐구이통닭</td>
         <td>9000</td>
      </tr>
      <tr>
         <td>콤비네이션피자</td>
         <td>6000</td>
         <td>치킨스틱&윙</td>
         <td>4900</td>
      </tr>
      <tr>
         <td>포테이토피자</td>
         <td>7000</td>
         <td>치즈오븐스파게티</td>
         <td>4000</td>
      </tr>
      <tr>
         <td>고구마피자</td>
         <td>7000</td>
         <td>새우링&웨지감자</td>
         <td>3500</td>
      </tr>
      <tr>
         <td>불고기피자</td>
         <td>8000</td>
         <td>갈릭포테이토</td>
         <td>3000</td>
      </tr>
      <tr>
         <td rowspan="6">토핑</td>
         <td>고구마무스</td>
         <td>1000</td>
         <td>콜라</td>
         <td>1500</td>
      </tr>
      <tr>
         <td>콘크림무스</td>
         <td>1500</td>
         <td>사이다</td>
         <td>1500</td>
      </tr>
      <tr>
         <td>파인애플토핑</td>
         <td>2000</td>
         <td>갈릭소스</td>
         <td>500</td>
      </tr>
      <tr>
         <td>치즈토핑</td>
         <td>2000</td>
         <td>피클</td>
         <td>300</td>
      </tr>
      <tr>
         <td>치즈크러스트</td>
         <td>2000</td>
         <td>핫소스</td>
         <td>100</td>
      </tr>
      <tr>
         <td>치즈바이트</td>
         <td>3000</td>
         <td>파마산 치즈가루</td>
         <td>100</td>
      </tr>
   </table>
   <form action="order">
   피자 : 
      <select name="pizza">
         <option>치즈피자</option>
         <option>콤비네이션피자</option>
         <option>포테이토피자</option>
         <option>고구마피자</option>
         <option>불고기피자</option>
      </select>
      <br>
   토핑 : 
      <input type="checkbox" value="고구마무스" name="topping" id="t1">
      <label for="t1">고구마무스</label>
      <input type="checkbox" value="콘크림무스" name="topping" id="t2">
      <label for="t2">콘크림무스</label>
      <input type="checkbox" value="파인애플토핑" name="topping" id="t3">
      <label for="t3">파인애플토핑</label>
      <input type="checkbox" value="치즈토핑" name="topping" id="t4">
      <label for="t4">치즈토핑</label>
      <input type="checkbox" value="치즈크러스트" name="topping" id="t5">
      <label for="t5">치즈크러스트</label>
      <input type="checkbox" value="치즈바이트" name="topping" id="t6">
      <label for="t6">치즈바이트</label>
      
      <br>
      
   사이드 : 
      <input type="checkbox" value="오븐구이통닭" name="side" id="s1">
      <label for="s1">오븐구이통닭</label>
      
      <input type="checkbox" value="치킨스틱&윙" name="side" id="s2">
      <label for="s2">치킨스틱&윙</label>
      
      <input type="checkbox" value="치즈오븐스파게티" name="side" id="s3">
      <label for="s3">치즈오븐스파게티</label>
      
      <input type="checkbox" value="새우링&웨지감자" name="side" id="s4">
      <label for="s4">새우링&웨지감자</label>
      
      <input type="checkbox" value="갈릭포테이토" name="side" id="s5">
      <label for="s5">갈릭포테이토</label>
      
      <input type="checkbox" value="콜라" name="side" id="s6">
      <label for="s6">콜라</label>
      
      <input type="checkbox" value="사이다" name="side" id="s7">
      <label for="s7">사이다</label>
      
      <input type="checkbox" value="갈릭소스" name="side" id="s8">
      <label for="s8">갈릭소스</label>
      
      <input type="checkbox" value="피클" name="side" id="s9">
      <label for="s9">피클</label>
      
      <input type="checkbox" value="핫소스" name="side" id="s10">
      <label for="s10">핫소스</label>
      
      <input type="checkbox" value="파마산 치즈가루" name="side" id="s11">
      <label for="s11">파마산 치즈가루</label>
      <br>
      <input type="submit" value="확인">
   </form>








</body>
</html>