package com.op5p.model;

public class MemberDTO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private int member_grade;
	public MemberDTO(String member_id, String member_pw, String member_name, String member_email, int member_grade) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_grade = member_grade;
	}
	public MemberDTO() {
		super();
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(int member_grade) {
		this.member_grade = member_grade;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MemberDTO [member_id=").append(member_id).append(", member_pw=").append(member_pw)
				.append(", member_name=").append(member_name).append(", member_email=").append(member_email)
				.append(", member_grade=").append(member_grade).append("]");
		return builder.toString();
	}
	
}
