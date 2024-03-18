package com.kh.member.model.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.kh.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession , Member m) {
		/*
		 * // Insert문 => 처리된 행의 갯수를 반환 
		 * int result = 0;		 * 
		 * PreparedStatement pstmt = null;
		 * 
		 * String sql = prop.getProperty("insertMember");
		 * 
		 * try { pstmt = conn.prepareStatement(sql);
		 * 
		 * pstmt.setString(1, m.getUserId()); pstmt.setString(2, m.getUserPwd());
		 * pstmt.setString(3, m.getUserName()); pstmt.setString(4, m.getPhone());
		 * pstmt.setString(5, m.getEmail()); pstmt.setString(6, m.getAddress());
		 * pstmt.setString(7, m.getInterest());
		 * 
		 * result = pstmt.executeUpdate();
		 * 
		 * } catch (SQLException e) { e.printStackTrace(); } finally { close(pstmt); }
		 * return result;
		 */
		/* 
		 * sqlSession에서 제공하는 메소드를 통해서 sql문을 찾아서 실행하고 결과를 받아볼수 있다.
		 * 
		 * sqlSession.sql문종류에맞는메소드("매퍼파일의namespace.해당sql문의 고유한 id",sql실행시 필요한 객체);
		 * => 해당 sql문이 완성된상태라면 두번째매개변수는 생략이 가능하다.
		 * 
		 * */
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public Member loginMember(SqlSession sqlSession , Member m) {
		//selectOne 메소드 : 조회결과가 없다면 null반환
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
