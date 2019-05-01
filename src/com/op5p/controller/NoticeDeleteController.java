package com.op5p.controller;

import java.util.Map;

import com.op5p.model.MemberBoardService;


public class NoticeDeleteController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		MemberBoardService service = new MemberBoardService();
		int board_num = (Integer)data.get("board_num");
		service.deleteArticle(board_num);
	}

}
