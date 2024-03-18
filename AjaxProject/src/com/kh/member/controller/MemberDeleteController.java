package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/delete.me")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteController() {
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
		request.setCharacterEncoding("UTF-8");
		
		// 삭제처리시 delete문이 아닌 update문 이용.
		
		String userPwd = request.getParameter("userPwd");
		
		// 로그인한 회원의 정보를 얻어내는 방법.
		// 방법 1. input type="hidden"으로 요청시 숨겨서 전달하는 방법.
		// 방법 2. session 영역에 담겨있는 회원객체로부터 뽑아오기★
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		String userId = loginUser.getUserId();
		
		int result = new MemberService().deleteMember(userId, userPwd);
		
		if(result > 0) { // 회원탈퇴 성공시 => 로그아웃처리
			session.setAttribute("alertMsg", "성공적으로 회원탈퇴 되었습니다. 그동안 이용해주셔서 감사합니다 ^^");
			
			// invalidate()메소드를 사용시 세션이 만료되어서 alert이 되지 않는다
			// removeAttribute를 이용하여 현재 로그인한 사용자의 정보를 지워주는 방식으로 로그아웃 시키기.
			session.removeAttribute("loginUser");
			response.sendRedirect(request.getContextPath());
		}else { //실패시 => 에러머세지+에러페이지로 포워딩
			request.setAttribute("errorMsg", "회원 탈퇴에 실패했습니다");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		// 실패시 => 에러페이지로 포워딩
		// 에러메세지 : 회원탈퇴에 실패했습니다.
		
		// 성공시 => 메인페이지 url재요청
		// 성공메세지 : 성공적으로 회원탈퇴 되었습니다. 그동안 이용해주셔서 감사합니다 ^^
		// session에 저장된 회원정보 제거.
	
	
	
	
	
	
	
	}

}
