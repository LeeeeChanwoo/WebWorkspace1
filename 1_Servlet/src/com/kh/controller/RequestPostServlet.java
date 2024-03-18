package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/test2.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//요청시 전달한 값들은 request의 parameter에 담겨있다
		//다만 post방식 요청의 경우 값을 뽑기 전에 utf-8 방식으로 인코딩 설정을 해야한다
		//	post방식의 기본 인코딜 설정은 ISO-8859-1이기 때문
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");// "민경민",""(텍스트상자가 빈 경우 빈 문자열이 넘어감)
		String gender = request.getParameter("gender");// "M"/"F"/NULL/->라디오 버튼 체크 안한경우
		int age = Integer.parseInt(request.getParameter("age"));// "20",""(값이 없는경우 numberformatexception 발생)
		String[] foods = request.getParameterValues("food");//["한식","일식"]/null (체크한게 없다면 null 반환)
		//응답페이지 출력
		//get방식에서 다뤄본 내용은 순수 servlet만 이용한 방식 -> java 코드 내에 html을 작성
		//jsp(java server page) : html 내에 java코드를 쓸 수 있는 기술
		//응답페이지를 만드는 과정을 jsp에게 위임(떠넘기기)할 예정
		
		//단, 그 응답화면(jsp)에서 필요로 하는 데이터들은 request 객체에 담아서 전달해줘야한다
		// -> request의 attribute라는 영역에 데이터 담아서 전달해주기 (키-벨류 세트로)
		//request.setAttribute("키","벨류");
		request.setAttribute("name",name);
		request.setAttribute("age",age);
		request.setAttribute("gender",gender);
		request.setAttribute("foods",foods);
		
		//위임 시 필요한 객체 : RequestDispatcher 객체
		//1) 응답하고자하는 뷰 선택 후 생성
		RequestDispatcher view = request.getRequestDispatcher("views/responsePage.jsp");
				
		//2)포워딩
		view.forward(request, response);
	
	}

}
