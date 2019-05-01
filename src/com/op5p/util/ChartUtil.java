package com.op5p.util;

import javax.servlet.http.HttpServletRequest;

import com.op5p.model.ChartDTO;

public class ChartUtil {
	public static ChartDTO makeChart(HttpServletRequest request) {
		String chart_id = request.getParameter("CHART_ID");
		String chart_title = request.getParameter("CHART_TITLE");
		String chart_datasource = request.getParameter("CHART_DATASOURCE");
		String chart_year = request.getParameter("CHART_YEAR");
		String chart_unit = request.getParameter("CHART_UNIT");
		String chart_visualtype = request.getParameter("CHART_VISUALTYPE");
		String chart_author = request.getParameter("CHART_AUTHOR");
		String chart_keyword = request.getParameter("CHART_KEYWORD");
		String chart_datatype = request.getParameter("CHART_DATATYPE");
		String chart_filepath = request.getParameter("CHART_FILEPATH");
		
		ChartDTO chart = new ChartDTO(chart_id, chart_title, chart_datasource, 
				chart_year, chart_unit, chart_visualtype, chart_author, chart_keyword, 
				chart_datatype, chart_filepath);
		
		return chart;
	}
}
