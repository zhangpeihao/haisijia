package com.haisijia.yhis.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.haisijia.common.AppMessage;
import com.haisijia.common.AppUtil;
import com.haisijia.yhis.YhisConstants;
import com.haisijia.yhis.model.LoginModel;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

/**
 * 患者相关服务的实现
 * @author 闫涛
 *
 */
public class PatientService {
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
			case YhisConstants.SERVICE_GET_PATIENTS:
				return executeQueryPatient(params);
			case YhisConstants.SERVICE_ADD_PATIENT:
				return executeAddPatient(params);
			case YhisConstants.SERVICE_UPDATE_PATIENT:
				return executeUpdatePatient(params);
			case YhisConstants.SERVICE_DELETE_PATIENT:
				return executeDeletePatient(params);
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
	private static Map<String, Object> executeQueryPatient(JSONObject params) {
		String patientName = params.getString("patientName");
		int startIndex = params.getInt("startIndex");
		int amount = params.getInt("amount");
		Map<String, String> dbParams = new HashMap<>();
		dbParams.put("patientName", patientName);
		List<PatientVo> patients = PatientModel.getPatients(dbParams, startIndex, amount);
		int total = PatientModel.getPatientsTotal(dbParams);
		Map<String, Object> rst = new HashMap<>();
		rst.put("patients", patients);
		rst.put("total", total);
		return rst;
	}
	
	/**
	 * 添加患者
	 * @param params
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
	private static Map<String, Object> executeAddPatient(JSONObject params) {
		return null;
	}
	
	/**
	 * 更新患者信息
	 * @param params
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
	private static Map<String, Object> executeUpdatePatient(JSONObject params) {
		return null;
	}
	
	/**
	 * 删除患者信息
	 * @param params
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
	private static Map<String, Object> executeDeletePatient(JSONObject params) {
		return null;
	}
}
