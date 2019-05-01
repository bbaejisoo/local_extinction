package com.op5p.controller;

import java.util.Map;

import com.op5p.model.BoardDTO;
import com.op5p.model.ChartDTO;
import com.op5p.model.ChartService;
import com.op5p.model.MemberBoardService;


public class ChartModifyController implements CommonController {

	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		String method = (String)data.get("method");
		
		if(method.equals("get")) {
			String chart_id = (String) data.get("chart_id");
			ChartService service = new ChartService();
			ChartDTO chart = service.showChart(chart_id);
			data.put("chart", chart);
			String path = (String) data.get("path");
			path += chart.getChart_filepath();
			data.put("path", path);
			
		}
		else {
			ChartDTO chart = (ChartDTO)data.get("chart");
			ChartService service = new ChartService();
			service.modifyChart(chart);
		}
	}

}
