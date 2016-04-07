package com.haisijia.yhis.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.haisijia.common.AppMessage;
import com.haisijia.common.AppServiceRegistry;
import com.haisijia.common.AppUtil;
import com.haisijia.controller.AppController;
import com.haisijia.controller.AppServlet;
import com.haisijia.controller.MainServlet;
import com.haisijia.jedis.JedisEngine;
import com.haisijia.model.JspParamsVo;
import com.haisijia.model.MenuDetailModel;
import com.haisijia.model.MenuVo;
import com.haisijia.yhis.YhisConstants;
import com.haisijia.yhis.model.HomeModel;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

public class PatientController implements AppController {
	/**
	 * 页面跳转处理入口函数
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		PatientModel patientModel = new PatientModel();
		patientModel.setJspParamsVo(jspParamsVo);
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		// 处理顶部和左侧菜单
		List<MenuVo> topMenus = MenuDetailModel.getTopMenuFromDb(hospitalId, roleId);
		int selectedTopMenuId = Integer.parseInt(AppUtil.getParameter(request, "stmId", "0"));
		if (0 == selectedTopMenuId) {
			selectedTopMenuId = topMenus.iterator().next().getMenuId();
		}
		List<MenuVo> sidebarMenus = MenuDetailModel.getSidebarMenuFromDb(hospitalId, roleId, selectedTopMenuId);
		int selectedSidebarMenuId = Integer.parseInt(AppUtil.getParameter(request, "ssmId", "0"));
		if (0 == selectedSidebarMenuId && sidebarMenus != null && sidebarMenus.size() > 0) {
			selectedSidebarMenuId = sidebarMenus.iterator().next().getMenuId();
		}
		// 根据不同命令调用不同的函数来完成不同的功能
		switch (cmd) {
		case "showPatientList":
			showPatientList(request, response, patientModel);
			break;
		case "showPatientDetail":
			showPatientDetail(request, response, patientModel);
			break;
		}
		
		patientModel.setTopMenus(topMenus);
		patientModel.setSelectedTopMenuId(selectedTopMenuId);
		patientModel.setSidebarMenus(sidebarMenus);
		patientModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("patientModel", patientModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", patientModel);
        requestDispatcher.forward(request, response);
	}
	
	/**
	 * Ajax请求处理函数
	 * @param request
	 * @param response
	 * @param cmd
	 * @throws ServletException
	 * @throws IOException
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static void doAjaxGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		PatientModel patientModel = new PatientModel();
		switch (cmd) {
		case "getSpecPatientsAjax":
			getSpecPatientsAjax(request, response, patientModel);
			break;
		case "deletePatientAjax":
			deletePatientAjax(request, response, patientModel);
			break;
		case "updatePatientAjax":
			updatePatientAjax(request, response);
			break;
		}
		
	}
	
	/**
	 * 获取符合条件的患者列表，并将其保存到model中
	 * @param patientModel
	 * 【闫涛 2016.03.28】初始版本
	 */
	private static void showPatientList(HttpServletRequest request,
            HttpServletResponse response, PatientModel patientModel) {
		getSpecPatientsBase(request, response, patientModel);
	}
	
	/**
	 * 页面上下页跳转时通过Ajax获取患者列表信息
	 * @param request
	 * @param response
	 * @param patientModel
	 * 【闫涛 2016.02.28】初始版本
	 */
	private static void getSpecPatientsAjax(HttpServletRequest request,
            HttpServletResponse response, PatientModel patientModel) {
		getSpecPatientsBase(request, response, patientModel);
		int pageSeq = Integer.parseInt(AppUtil.getParameter(request, "pageSeq", "1"));
		int amount = Integer.parseInt(AppUtil.getParameter(request, "recsPerPage", "5"));
		JSONObject json = new JSONObject();
		json.put("status", "Ok");
		json.put("total", patientModel.getPatientsTotal());
		json.put("recsPerPage", amount);
		json.put("pageSeq", pageSeq);
		json.put("patients", patientModel.getPatients());
		try {
			AppUtil.sendHttpAjaxResponse(response, json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 页面初始化显示或翻页显示时获取患者列表公共方法
	 * @param request
	 * @param response
	 * @param patientModel
	 * 【闫涛 2016.02.28】初始版本
	 */
	private static void getSpecPatientsBase(HttpServletRequest request,
            HttpServletResponse response, PatientModel patientModel) {
		Method method = AppServiceRegistry.getInstance().getService(YhisConstants.SERVICE_GET_PATIENTS).orElse(null);
		int pageSeq = Integer.parseInt(AppUtil.getParameter(request, "pageSeq", "1"));
		int amount = Integer.parseInt(AppUtil.getParameter(request, "recsPerPage", "5"));
		int startIndex = (pageSeq - 1)*amount + 1;

    	JSONObject json = new JSONObject();
    	json.put("cmd", YhisConstants.SERVICE_GET_PATIENTS);
    	json.put("p", "pc");
    	json.put("v", "0.0.1");
    	json.put("patientName", "");
    	json.put("startIndex", startIndex);
    	json.put("amount", amount);
    	AppMessage msg = new AppMessage(1, YhisConstants.SERVICE_GET_PATIENTS, json);
    	Map<String, Object> resp = null;
    	try {
			resp = (Map<String, Object>)method.invoke(null, msg);
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}    	
		List<PatientVo> patients = (List<PatientVo>)resp.get("patients");
		patientModel.setPatients(patients);
		patientModel.setPatientsTotal(((Integer)resp.get("total")).intValue());
	}
	
	private static void deletePatientAjax(HttpServletRequest request, 
			HttpServletResponse response, PatientModel patientModel) {
		String patientIdStr = AppUtil.getParameter(request, "patientId", "0");
		long patientId = Long.parseLong(patientIdStr);
		int affectedRows = -1;
		if (patientId > 0) {
			affectedRows = PatientModel.deletePatient(patientId);
		}
		JSONObject respJson = new JSONObject();
		if (affectedRows >= 0) {
			respJson.put("status", "Ok");
			respJson.put("patientId", "" + patientId);
		} else {
			respJson.put("status", "Error");
			respJson.put("patientId", patientId);
		}
		try {
			AppUtil.sendHttpAjaxResponse(response, respJson);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static void showPatientDetail(HttpServletRequest request,
            HttpServletResponse response, PatientModel patientModel) {
		String patientIdStr = AppUtil.getParameter(request, "patientId", "0");
		long patientId = Long.parseLong(patientIdStr);
		if (patientId > 0) {
			patientModel.setPatientVo(PatientModel.getPatientDetail(patientId));
		} else {
			patientModel.setPatientVo(null);
		}
	}

	public static void addPatientAjax(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String jsonReq = AppUtil.getParameter(request, "jsonReq");
		JSONObject json = new JSONObject(jsonReq);
		PatientVo patientVo = new PatientVo();
		patientVo.setPatientName(AppUtil.transStrToUtf8(json.getString("patientName")));
		patientVo.setResidentHospitalCode(json.getString("residentHospitalCode"));
		patientVo.setMedicalInsuranceTypeId(json.getInt("medicalInsuranceTypeId"));
		patientVo.setAccountId(json.getLong("accountId"));
		patientVo.setGenderId(json.getInt("genderId"));
		patientVo.setBirthday(json.getString("birthday"));
		long patientId = PatientModel.addPatient(patientVo);
		JSONObject respJson = new JSONObject();
		if (patientId > 0) {
			respJson.put("status", "Ok");
			respJson.put("patientId", "" + patientId);
		} else {
			respJson.put("status", "Error");
			respJson.put("patientId", patientId);
		}
		AppUtil.sendHttpAjaxResponse(response, respJson);
	}
	

	public static void updatePatientAjax(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		String jsonReq = AppUtil.getParameter(request, "jsonReq");
		JSONObject json = new JSONObject(jsonReq);
		PatientVo patientVo = new PatientVo();
		patientVo.setPatientId(Long.parseLong(json.getString("patientId")));
		patientVo.setPatientName(AppUtil.transStrToUtf8(json.getString("patientName")));
		patientVo.setResidentHospitalCode(json.getString("residentHospitalCode"));
		patientVo.setMedicalInsuranceTypeId(json.getInt("medicalInsuranceTypeId"));
		patientVo.setAccountId(json.getLong("accountId"));
		patientVo.setGenderId(json.getInt("genderId"));
		patientVo.setBirthday(json.getString("birthday"));
		int affectedRows = PatientModel.updatePatient(patientVo);
		JSONObject respJson = new JSONObject();
		if (affectedRows >= 0) {
			respJson.put("status", "Ok");
			respJson.put("patientId", "" + patientVo.getPatientId());
		} else {
			respJson.put("status", "Error");
			respJson.put("patientId", "" + patientVo.getPatientId());
		}
		AppUtil.sendHttpAjaxResponse(response, respJson);
	}
}
