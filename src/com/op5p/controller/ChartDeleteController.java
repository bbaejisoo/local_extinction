package com.op5p.controller;

import java.util.Map;

import com.op5p.model.ChartService;

public class ChartDeleteController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		ChartService service = new ChartService();
		String chart_id = (String) data.get("chart_id");
		service.deleteChart(chart_id);
	}

}
