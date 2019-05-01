package com.op5p.model;

import java.sql.Date;

public class BoardDTO {
	private int board_num;
	private String board_title;
	private String board_content;
	private Date board_date;
	private String member_id;
	private int board_count;
	private int board_public;
	public BoardDTO(int board_num, String board_title, String board_content, Date board_date, String member_id,
			int board_count, int board_public) {
		super();
		this.board_num = board_num;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.member_id = member_id;
		this.board_count = board_count;
		this.board_public = board_public;
	}
	public BoardDTO() {
		super();
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getBoard_count() {
		return board_count;
	}
	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}
	public int getBoard_public() {
		return board_public;
	}
	public void setBoard_public(int board_public) {
		this.board_public = board_public;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardDTO [board_num=").append(board_num).append(", board_title=").append(board_title)
				.append(", board_content=").append(board_content).append(", board_date=").append(board_date)
				.append(", member_id=").append(member_id).append(", board_count=").append(board_count)
				.append(", board_public=").append(board_public).append("]");
		return builder.toString();
	}
	
	
}
