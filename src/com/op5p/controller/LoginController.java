package com.op5p.controller;

import java.util.Map;

import com.op5p.model.MemberBoardService;
import com.op5p.model.MemberDTO;


public class LoginController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		String method = (String)data.get("method");
		if(method.equals("get")) return;
		String member_id = (String)data.get("member_id");
		String member_pw = (String)data.get("member_pw");
		
		MemberBoardService service = new MemberBoardService();
		MemberDTO member = service.loginCheck(member_id, member_pw);
		
		data.put("loginResult", member==null?"no":"yes");
		data.put("member", member);
		
	}

}
