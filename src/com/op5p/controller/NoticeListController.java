package com.op5p.controller;

import java.util.List;
import java.util.Map;

import com.op5p.model.BoardDTO;
import com.op5p.model.MemberBoardService;


public class NoticeListController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		
		MemberBoardService service = new MemberBoardService();
		List<BoardDTO> boardList = service.selectAll();
		String path = (String)data.get("path");
		service.convertToJson(boardList, path);
//		for(BoardDTO b: boardList) {
//			System.out.println(b);
//		}
		data.put("boardList", boardList);
	}
	
}
