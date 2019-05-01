package com.op5p.model;

import java.util.List;

public class MemberBoardService {
	MemberDAO mdao = new MemberDAO();
	BoardDAO bdao = new BoardDAO();
	
	public int selectGrade(String member_id) {
		return mdao.selectGrade(member_id);
	}
	
	public MemberDTO loginCheck(String member_id, String member_pw) {
		return mdao.loginCheck(member_id, member_pw);
	}
	
	public BoardDTO showContent(int board_num) {
		return bdao.showContent(board_num);
	}
	
	public List<BoardDTO> selectAll() {
		return bdao.selectAll();
	}
	
	public int writeDocument(BoardDTO board) {
		return bdao.writeDocument(board);
	}
	
	public void convertToJson(List<BoardDTO> boardList, String path) {
		bdao.convertToJson(boardList, path);
	}

	public int modifyArticle(BoardDTO board) {
		// TODO Auto-generated method stub
		return bdao.modifyArticle(board);
	}

	public int deleteArticle(int board_num) {
		// TODO Auto-generated method stub
		return bdao.deleteArticle(board_num);
	}

}
