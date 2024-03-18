<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>EL (Expression Language) ǥ�����</h1>
	<p>
	������ ����ߴ� ǥ���� (��½�) &lt;%=name %&gt;�� ���� <br>
	JSP�󿡼� ǥ���ϰ��� �ϴ� ���� \{name}�� �������� ǥ���ؼ� �ۼ��ϴ� ��
	</p>
	
	<h3>1. EL�⺻������ ���ؼ� ���� �������</h3>
	<a href = "/action/el.do">01_EL</a>
	
	<!--
		JSP�� �̷�� ��������
		1. JSP ��ũ���� ���� : JSP ������ ������ �ڹ��ڵ带 ���� ����� �� �ְ� ���ִ� ���
		2. ���þ� : JSP ������ ������ ���� ������ ǥ���Ѵٰų�, �Ǵٸ� �������� ������ �� ���
		EX) Page ���þ�, include ���þ�, taglib ���þ�
		
		3. JSP �׼� �±� :
			-ǥ�� �׼��±� : �߰� ��ġ ���� JSP ������ ������ �ٷ� ��� ����, 
			��� �±׸� �տ� jsp: ���ξ �ٴ´�
			- Ŀ���� �׼� �±� : jsp ������ ������ �ٷ� ��� �Ұ��� (������ �ʿ���)
			Ŀ���� �׼��±״� ��� �±׸� �տ� �Ǵٸ� ���ξ �ٴ´�
			�����ǰ� �ִ� ��ǥ���� ���̺귯�� (JSTL) 
	 -->
	<h1>* jsp Action Tag</h1>
	<p>
	XML ����� �̿��ؼ� ������ JSP ������ Ȯ���Ű�� ����� �����ϴ� �±׵�
	</p>
	
	<h3>1.ǥ�ؾ׼��±�</h3>
	<p>
		JSP ���������� ������ ���̺귯�� ���� ���� ��ٷ� ��� ������<br>
		�±� �տ� jsp: ���ξ ����
	</p>
	
	<a href = "views/2_StandardAction/01_include.jsp">01_jsp:include</a><br>
	<a href = "views/2_StandardAction/02_forward.jsp">02_forward</a><br>

	<h3>Ŀ���� �׼� �±�</h3>
	<a href = "views/3_CustomAction/jstl.jsp">JSTL</a>
</body>
</html>