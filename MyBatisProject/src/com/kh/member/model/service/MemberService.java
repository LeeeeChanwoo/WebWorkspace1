package com.kh.member.model.service;

import java.sql.Connection;


import org.apache.ibatis.session.SqlSession;

import com.kh.common.Template;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {

	private MemberDao dao = new MemberDao();
	
	public int insertMember(Member m ) {
		
		/* 
		 * 1. 커넥션객체 생성
		 * Connection conn = getConnection();
		 * 
		 * 2. DAO conn객체 전달
		 * 
		 * 3. conn자원반납 및 트랜잭션 처리
		 * close(conn) , commit(conn) , rollback(conn);
		 * */
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = dao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}
	
	public Member loginMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = dao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		return loginUser;
	}
	
	
	
	
	
	
	
	
	
	
}
