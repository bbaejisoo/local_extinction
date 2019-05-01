package com.op5p.controller;

import java.util.Map;

import com.op5p.model.BoardDTO;
import com.op5p.model.MemberBoardService;


public class NoticeModifyController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		String method = (String)data.get("method");
		
		if(method.equals("get")) {
			int board_num = (Integer)data.get("board_num");
			MemberBoardService service = new MemberBoardService();
			BoardDTO board = service.showContent(board_num);
			data.put("board", board);
		}
		else {
			BoardDTO board = (BoardDTO)data.get("board");
			MemberBoardService service = new MemberBoardService();
			service.modifyArticle(board);
		}
	}

}
