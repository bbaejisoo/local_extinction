package com.op5p.model;

/**
 * @brief ChartDTO 클래스
 * @details CHART 테이블에 저장된 데이터를 저장할 클래스 정의
 * @author "CM_Yoon"
 * @date 2018. 12. 19.
 */
public class ChartDTO {
	private String chart_id;
	private String chart_title;
	private String chart_datasource;
	private String chart_year;
	private String chart_unit;
	private String chart_visualtype;
	private String chart_author;
	private String chart_keyword;
	private String chart_datatype;
	private String chart_filepath;

	public ChartDTO(String chart_id, String chart_title, String chart_datasource, String chart_year, String chart_unit,
			String chart_visualtype, String chart_author, String chart_keyword, String chart_datatype,
			String chart_filepath) {
		super();
		this.chart_id = chart_id;
		this.chart_title = chart_title;
		this.chart_datasource = chart_datasource;
		this.chart_year = chart_year;
		this.chart_unit = chart_unit;
		this.chart_visualtype = chart_visualtype;
		this.chart_author = chart_author;
		this.chart_keyword = chart_keyword;
		this.chart_datatype = chart_datatype;
		this.chart_filepath = chart_filepath;
	}
	public ChartDTO() {
		super();
	}
	public String getChart_id() {
		return chart_id;
	}
	public void setChart_id(String chart_id) {
		this.chart_id = chart_id;
	}
	public String getChart_title() {
		return chart_title;
	}
	public void setChart_title(String chart_title) {
		this.chart_title = chart_title;
	}
	public String getChart_datasource() {
		return chart_datasource;
	}
	public void setChart_datasource(String chart_datasource) {
		this.chart_datasource = chart_datasource;
	}
	public String getChart_year() {
		return chart_year;
	}
	public void setChart_year(String chart_year) {
		this.chart_year = chart_year;
	}
	public String getChart_unit() {
		return chart_unit;
	}
	public void setChart_unit(String chart_unit) {
		this.chart_unit = chart_unit;
	}
	public String getChart_visualtype() {
		return chart_visualtype;
	}
	public void setChart_visualtype(String chart_visualtype) {
		this.chart_visualtype = chart_visualtype;
	}
	public String getChart_author() {
		return chart_author;
	}
	public void setChart_author(String chart_author) {
		this.chart_author = chart_author;
	}
	public String getChart_keyword() {
		return chart_keyword;
	}
	public void setChart_keyword(String chart_keyword) {
		this.chart_keyword = chart_keyword;
	}
	public String getChart_datatype() {
		return chart_datatype;
	}
	public void setChart_datatype(String chart_datatype) {
		this.chart_datatype = chart_datatype;
	}
	public String getChart_filepath() {
		return chart_filepath;
	}
	/**
	 * @brief 파일경로 저장
	 * @details 파일경로를 지정
	 * @param 파일경로(String chart_filepath)
	 * @return 없음
	 */
	public void setChart_filepath(String chart_filepath) {
		this.chart_filepath = chart_filepath;
	}
	/**
	 * @see java.lang.Object#toString()
	 * @brief toString 함수
	 * @details ChartDTO 데이터에 저장된 변수명 및 값 출력
	 * @param X
	 * @return 변수명 및 값을 스트링에 저장한 값
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChartDTO [chart_id=").append(chart_id).append(", chart_title=").append(chart_title)
				.append(", chart_datasource=").append(chart_datasource).append(", chart_year=").append(chart_year)
				.append(", chart_unit=").append(chart_unit).append(", chart_visualtype=").append(chart_visualtype)
				.append(", chart_author=").append(chart_author).append(", chart_keyword=").append(chart_keyword)
				.append(", chart_datatype=").append(chart_datatype).append(", chart_filepath=").append(chart_filepath)
				.append("]");
		return builder.toString();
	}
	
	
}
