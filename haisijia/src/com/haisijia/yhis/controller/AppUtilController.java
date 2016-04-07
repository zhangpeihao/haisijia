package com.haisijia.yhis.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.haisijia.common.AppServiceRegistry;
import com.haisijia.common.AppUtil;
import com.haisijia.controller.AppController;
import com.haisijia.controller.AppServlet;
import com.haisijia.controller.MainServlet;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.JspParamsVo;
import com.haisijia.model.MenuDetailModel;
import com.haisijia.model.MenuVo;
import com.haisijia.yhis.model.AppUtilModel;
import com.haisijia.yhis.model.HomeModel;
import com.haisijia.yhis.model.KeyValueVo;

public class AppUtilController implements AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String sql = AppUtil.getParameter(request, "sql");
		JSONArray rstJson = new JSONArray();
		JSONObject objJson = null;
		List<KeyValueVo> items = AppUtilModel.getKeyValues(sql);
		for (KeyValueVo item : items) {
			objJson = new JSONObject();
			objJson.put("keyStr", item.getKey());
			objJson.put("valStr", item.getValue());
			rstJson.put(objJson);
		}		
		JSONObject json = new JSONObject();
		json.put("status", "Ok");
		json.put("recs", rstJson);
		AppUtil.sendHttpAjaxResponse(response, json);
	}
}
