package com.op5p.model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.op5p.util.OracleDBUtil;

public class ChartDAO {
	public ChartDAO() {

	}

	public int modifyChart(ChartDTO chart) {
		int result = 0;
		//System.out.println(chart);
		
		Connection conn = null;
		PreparedStatement stm = null;
		String sql = "update CHART set chart_title = ?, chart_datasource = ?, "
				+ "chart_year = ?, chart_unit = ?, "
				+ "chart_visualtype = ?, chart_author = ?, "
				+ "chart_keyword = ?, chart_datatype = ?, "
				+ "chart_filepath = ? "
				+ "where CHART_ID = ?";
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			
			stm.setString(10, chart.getChart_id());
			stm.setString(1, chart.getChart_title());
			stm.setString(2, chart.getChart_datasource());
			stm.setString(3, chart.getChart_year());
			stm.setString(4, chart.getChart_unit());
			stm.setString(5, chart.getChart_visualtype());
			stm.setString(6, chart.getChart_author());
			stm.setString(7, chart.getChart_keyword());
			stm.setString(8, chart.getChart_datatype());
			stm.setString(9, chart.getChart_filepath());
			
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


	public int deleteChart(String chart_id) {
		int result = 0;
		//System.out.println(chart_id);
		
		Connection conn = null;
		PreparedStatement stm = null;
		String sql = "delete from CHART where chart_id = ?";
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, chart_id);
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

	public int chartCreate(ChartDTO chart) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "insert into CHART values(?,?,?,?,?,?,?,?,?,?)";
		int result = 0;
		
		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, chart.getChart_id());
			stm.setString(2, chart.getChart_title());
			stm.setString(3, chart.getChart_datasource());
			stm.setString(4, chart.getChart_year());
			stm.setString(5, chart.getChart_unit());
			stm.setString(6, chart.getChart_visualtype());
			stm.setString(7, chart.getChart_author());
			stm.setString(8, chart.getChart_keyword());
			stm.setString(9, chart.getChart_datatype());
			stm.setString(10, chart.getChart_filepath());
			System.out.println("chart_id : "+chart.getChart_id());
			result = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		
		return result;
	}

	@SuppressWarnings("unchecked")
	public void convertToJson(List<ChartDTO> chartList, String path) {

		BufferedWriter bw = null;
		JSONArray array = new JSONArray();

		for (ChartDTO chart : chartList) {
			JSONObject data = new JSONObject();
			data.put("CHART_ID", chart.getChart_id());
			data.put("CHART_TITLE", chart.getChart_title());
			data.put("CHART_DATASOURCE", chart.getChart_datasource());
			data.put("CHART_YEAR", chart.getChart_year());
			data.put("CHART_UNIT", chart.getChart_unit());
			data.put("CHART_VISUALTYPE", chart.getChart_visualtype());
			data.put("CHART_AUTHOR", chart.getChart_author());
			data.put("CHART_KEYWORD", chart.getChart_keyword());
			data.put("CHART_DATATYPE", chart.getChart_datatype());
			data.put("CHART_FILEPATH", chart.getChart_filepath());

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
		// System.out.println(array);
	}

	public ChartDTO makeChart(ResultSet rs) throws SQLException {
		String chart_id = rs.getString("CHART_ID");
		String chart_title = rs.getString("CHART_TITLE");
		String chart_datasource = rs.getString("CHART_DATASOURCE");
		String chart_year = rs.getString("CHART_YEAR");
		String chart_unit = rs.getString("CHART_UNIT");
		String chart_visualtype = rs.getString("CHART_VISUALTYPE");
		String chart_author = rs.getString("CHART_AUTHOR");
		String chart_keyword = rs.getString("CHART_KEYWORD");
		String chart_datatype = rs.getString("CHART_DATATYPE");
		String chart_filepath = rs.getString("CHART_FILEPATH");

		ChartDTO chart = new ChartDTO(chart_id, chart_title, chart_datasource, chart_year, chart_unit, chart_visualtype,
				chart_author, chart_keyword, chart_datatype, chart_filepath);

		return chart;
	}

	public ChartDTO showChart(String chart_id) {
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		String sql = "select * from CHART where CHART_ID=?";
		ChartDTO chart = null;

		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, chart_id);
			rs = stm.executeQuery();
			if (rs.next()) {
				chart = makeChart(rs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}
		return chart;
	}

	public List<ChartDTO> selectAll() {
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		String sql = "select * from CHART";
		List<ChartDTO> chartList = new ArrayList<>();

		conn = OracleDBUtil.dbConnect();
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				ChartDTO chart = makeChart(rs);
				chartList.add(chart);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(rs, stm, conn);
		}

		return chartList;
	}

}