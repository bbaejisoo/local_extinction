package com.op5p.model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.op5p.util.OracleDBUtil;



/**
 * @brief
 * @details
 * @author "CM_Yoon"
 * @date 2018. 12. 14.
 */
public class BoardDAO {
	public BoardDAO() {
		
	}
	
	
	/**
	 * @brief 
	 * @details
	 * @param
	 * @return
	 */
	public void convertToJson(List<BoardDTO> boardList, String path) {
		
		BufferedWriter bw = null;
		
		JSONArray array = new JSONArray();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(BoardDTO brd:boardList) {
			Date bdate = brd.getBoard_date();
			String sbdate = sdf.format(bdate);
			
			JSONObject data = new JSONObject();
			data.put("BOARD_NUM", brd.getBoard_num());
			data.put("BOARD_TITLE", brd.getBoard_title());
			data.put("BOARD_CONTENT", brd.getBoard_content());
			data.put("BOARD_DATE", sbdate);
			data.put("MEMBER_ID", brd.getMember_id());
			data.put("BOARD_COUNT", brd.getBoard_count());
			data.put("BOARD_PUBLIC", brd.getBoard_public());
			//System.out.println(brd);
			array.add(data);
		}
		
		try {
			//System.out.println(path);
			bw = new BufferedWriter(new FileWriter(path));
			//System.out.println(array.toJSONString());
			bw.write(array.toJSONString());
			bw.flush();
			bw.close();
			//System.out.println("쓰기완료");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(array);
	}
	public List<BoardDTO> selectAll() {
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "select * from BOARD order by BOARD_NUM DESC";
		BoardDTO board = null;
		List<BoardDTO> boardList = new ArrayList<>();
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while(rs.next()) {
				int board_num = rs.getInt("BOARD_NUM");
				String board_title = rs.getString("BOARD_TITLE");
				String board_content = rs.getString("BOARD_CONTENT");
				Date board_date = rs.getDate("BOARD_DATE");
				String member_id = rs.getString("MEMBER_ID");
				int board_count = rs.getInt("BOARD_COUNT");
				int board_public = rs.getInt("BOARD_PUBLIC");
				
				board = new BoardDTO(board_num, board_title, board_content, board_date, member_id, board_count, board_public);
				//System.out.println(board);
				boardList.add(board);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		
		return boardList;
		
		
	}
	
	public BoardDTO showContent(int board_num) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "select * from BOARD where BOARD_NUM=?";
		BoardDTO board = null;
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, board_num);
			rs = stm.executeQuery();
			System.out.println(rs);
			if(rs.next()) {
				String board_title = rs.getString("BOARD_TITLE");
				String board_content = rs.getString("BOARD_CONTENT");
				Date board_date = rs.getDate("BOARD_DATE");
				String member_id = rs.getString("MEMBER_ID");
				int board_count = rs.getInt("BOARD_COUNT");
				int board_public = rs.getInt("BOARD_PUBLIC");
				
				board = new BoardDTO(board_num, board_title, board_content, board_date, member_id, board_count, board_public);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		//updateCount(board_num);
		return board;
	}
	
	public int writeDocument(BoardDTO board) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "insert into BOARD values(BOARDNUMSEQUENCE.NEXTVAL,?,?,SYSDATE,?,0,?)";
		int result = 0;
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, board.getBoard_title());
			stm.setString(2, board.getBoard_content());
			stm.setString(3, board.getMember_id());
			stm.setInt(4, board.getBoard_public());
			
			result = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		
		return result;
	}
	
	public int updateCount(int board_num) {
		int result = 0;
		Connection conn = null;
		PreparedStatement stm = null;
		String sql = "update BOARD set BOARD_COUNT = BOARD_COUNT+1 where BOARD_NUM = ?";
		
		conn = OracleDBUtil.dbConnect();
		
		try {
			conn.setAutoCommit(false);
			stm = conn.prepareStatement(sql);
			stm.setInt(1, board_num);
			result = stm.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			OracleDBUtil.dbDisconnect(null, stm, conn);
		}
		return result;
		
		
	}


	public int modifyArticle(BoardDTO board) {
		int result = 0;
		//System.out.println(board);
		
		Connection conn = null;
		PreparedStatement stm = null;
		String sql = "update BOARD set BOARD_TITLE = ?, BOARD_CONTENT = ?, BOARD_PUBLIC = ? where BOARD_NUM = ?";
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			
			stm.setInt(4, board.getBoard_num());
			stm.setString(1, board.getBoard_title());
			stm.setString(2, board.getBoard_content());
			stm.setInt(3,  board.getBoard_public());
			
			result = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(null, stm, conn);
		}
		//System.out.println(result);
		return result;
	}


	public int deleteArticle(int board_num) {
		// TODO Auto-generated method stub
		int result = 0;
		//System.out.println(board_num);
		
		Connection conn = null;
		PreparedStatement stm = null;
		String sql = "delete from BOARD where BOARD_NUM = ?";
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, board_num);
			result = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(null, stm, conn);
		}
		//System.out.println(result);
		return result;
	}

}
