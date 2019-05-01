package com.op5p.controller;

import java.util.Map;

import com.op5p.model.ChartDTO;
import com.op5p.model.ChartService;

public class ChartCreateController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		ChartService service = new ChartService();
		String method = (String)data.get("method");
		
		if(method.equals("get")) {
			return;
		}
		else {
			ChartDTO chart = (ChartDTO)data.get("chart");
			data.put("chart", chart);
			service.chartCreate(chart);
		}

	}

}
