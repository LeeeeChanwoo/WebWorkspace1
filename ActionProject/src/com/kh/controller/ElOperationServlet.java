package com.kh.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.model.vo.Person;

/**
 * Servlet implementation class ElOperationServlet
 */
@WebServlet("/el.do")
public class ElOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElOperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 
		 * 데이터들을 담을 수 있는 JSP 내장객체 종류
		 * 1. ServletContext(application Scope)
		 * 	한 애플리케이션당 1개 존재하는 객체
		 * 이 영역에 데이터를 담으면 애플리케이션 전역에서 사용 가능 -> 공유범위가 가장 큼
		 * 
		 * 2. HttpSession (Session Scope)
		 * 	한 브라우저당 1개 존재하는 객체
		 * 	이 영역에 데이터를 담으면 jsp/servlet단에서 사용 가능
		 * 값이 한 번 담기면 서버가 멈추거나 브라우저가 닫히기 전까지 사용 가능
		 * 
		 * 3. HttpServletRequest (request Scope)
		 * 요청 및 응답시 매번 생성되는 객체
		 * 이 영역에 데이터를 담으면 해당 request 객체를 포워딩 받는 응답 jsp에서만 쓸 수 있다
		 * 
		 * 4. PageContext (page Scope)
		 * 현재 jsp에서만 사용 가능
		 * 
		 * */
		
		//requestScope에 담기
		request.setAttribute("classRoom", "C강의장");
		request.setAttribute("student", new Person("ㅇㅇㅇ",24,"남자"));
		
		HttpSession session = request.getSession();
		session.setAttribute("academy", "KH정보교육원");
		session.setAttribute("teacher", new Person("dd",35,"남자"));
		
		request.setAttribute("scope", "request");
		session.setAttribute("scope", "session");
		
		//application에 담기
		ServletContext application = request.getServletContext();
		application.setAttribute("scope", "application");
		
		//--------------------------------------------------
		
		request.setAttribute("big", 10);
		request.setAttribute("small", 3);
		request.setAttribute("sOne", "안녕");
		request.setAttribute("sTwo", new String("안녕"));
		request.setAttribute("pOne", new Person("민경민",30,"남자"));
		request.setAttribute("pTwo", null);
		
		ArrayList<String> list1 = new ArrayList<>();
		request.setAttribute("lOne", list1);
		
		ArrayList<String> list2 = new ArrayList<>();
		list2.add("g");
		request.setAttribute("lTwo", list2);
		
		int count=0;
		for(String str : list2) {
			count++;
		}
		request.getRequestDispatcher("views/1_EL/01_el.jsp").forward(request, response);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
