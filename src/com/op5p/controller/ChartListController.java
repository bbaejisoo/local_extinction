package com.op5p.controller;

import java.util.List;
import java.util.Map;

import com.op5p.model.ChartDTO;
import com.op5p.model.ChartService;

public class ChartListController implements CommonController {
	@Override
	public void execute(Map<String, Object> data) {
		// TODO Auto-generated method stub
		ChartService service = new ChartService();
		List<ChartDTO> chartList = service.selectAll();
		String path = (String)data.get("path");
		service.convertToJson(chartList, path);
		data.put("chartList", chartList);
	}
}
