package com.kh.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.common.Template;
import com.kh.common.model.vo.PageInfo;

public class BoardService {
	
	private BoardDao dao = new BoardDao();
	
	public int selectListCount() {
		SqlSession sqlsession = Template.getSqlSession();
		
		int listCount = dao.selectListCount(sqlsession);
		
		sqlsession.close();
		
		return listCount;
	}
	
	public ArrayList<Board> selectList(PageInfo pi){
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Board> list = dao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;
	}
	
	
	public int selectSearchCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int searchCount = dao.selectSearchCount(sqlSession, map);
		
		sqlSession.close();
		
		return searchCount;
	}
	
	public ArrayList<Board> selectSearchList(HashMap<String , String> map, PageInfo pi){
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Board> list = dao.selectSearchList(sqlSession, map, pi);
		
		sqlSession.close();
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
