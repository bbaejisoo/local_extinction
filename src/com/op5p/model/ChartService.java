package com.op5p.model;

import java.util.List;

public class ChartService {
	ChartDAO dao = new ChartDAO();
	
	public int modifyChart(ChartDTO chart) {
		return dao.modifyChart(chart);
	}
	
	public int deleteChart(String chart_id) {
		return dao.deleteChart(chart_id);
	}
	
	public int chartCreate(ChartDTO chart) {
		return dao.chartCreate(chart);
	}
	
	public ChartDTO showChart(String chart_id) {
		return dao.showChart(chart_id);
	}
	
	public List<ChartDTO> selectAll() {
		return dao.selectAll();
	}
	
	public void convertToJson(List<ChartDTO> chartList, String path) {
		dao.convertToJson(chartList, path);
	}
}