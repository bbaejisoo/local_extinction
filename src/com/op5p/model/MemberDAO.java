package com.op5p.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.op5p.util.OracleDBUtil;

public class MemberDAO {
	public MemberDAO() {
		
	}
	
	public MemberDTO loginCheck(String member_id, String member_pw) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "select * from MEMBER where MEMBER_ID=? and MEMBER_PW=?";
		MemberDTO member = null;
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, member_id);
			stm.setString(2, member_pw);
			rs = stm.executeQuery();
			if(rs.next()) {
				String member_name = rs.getString("MEMBER_NAME");
				String member_email = rs.getString("MEMBER_EMAIL");
				int member_grade = rs.getInt("MEMBER_GRADE");
				
				member = new MemberDTO(member_id, member_pw, member_name, member_email, member_grade);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		
		return member;
	}
	
	public int selectGrade(String member_id) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "select MEMBER_GRADE from MEMBER where MEMBER_ID=?";
		int grade = 0;
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, member_id);
			rs = stm.executeQuery();
			if(rs.next()) {
				grade = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		
		return grade;
	}
}
