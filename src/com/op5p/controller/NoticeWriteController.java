package com.op5p.controller;

import java.util.Map;

import com.op5p.model.BoardDTO;
import com.op5p.model.MemberBoardService;


public class NoticeWriteController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		MemberBoardService service = new MemberBoardService();
		String method = (String)data.get("method");
		
		if(method.equals("get")) {
			return;
		}
		else {
			BoardDTO board = (BoardDTO)data.get("board");
			data.put("board", board);
			service.writeDocument(board);
		}
	}

}
