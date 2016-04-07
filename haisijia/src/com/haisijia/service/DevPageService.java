package com.haisijia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.haisijia.common.AppMessage;
import com.haisijia.model.dev.DevPageModel;
import com.haisijia.model.dev.DevPageVo;
import com.haisijia.yhis.YhisConstants;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

public class DevPageService {
	/**
	 * 执行业务逻辑入口函数
	 * @param msg
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
	public static Map<String, Object> execute(AppMessage msg) {
		Map<String, Object> rst = new HashMap<>();
		String resp = "";
		try {
			JSONObject params = msg.getParams();
			String cmd = params.getString("cmd");
			String platform = params.getString("p");
			String version = params.getString("v");
			switch (cmd) {
			case YhisConstants.SERVICE_GET_DEV_PAGES:
				return executeGetDevPages(params);
			}
		} catch (Exception ex) {
			rst.put("status", "Error");
			rst.put("reason", ex.getMessage());
			return rst;
		}
		return rst;
	}
	
	/**
	 * 查询符合条件的患者列表
	 * @param params
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
	private static Map<String, Object> executeGetDevPages(JSONObject params) {
		int startIndex = params.getInt("startIndex");
		int amount = params.getInt("amount");
		Map<String, String> dbParams = new HashMap<>();		
		List<DevPageVo> devPages = DevPageModel.getDevPages(dbParams, startIndex, amount);		
		int total = DevPageModel.getDevPagesTotal(dbParams);
		Map<String, Object> rst = new HashMap<>();
		rst.put("devPages", devPages);
		rst.put("total", total);
		return rst;
	}
}
