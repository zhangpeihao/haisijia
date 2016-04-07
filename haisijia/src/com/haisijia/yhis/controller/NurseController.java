package com.haisijia.yhis.controller;

import java.io.IOException;
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
import com.haisijia.yhis.model.FollowupModel;
import com.haisijia.yhis.model.HomeModel;
import com.haisijia.yhis.model.NurseModel;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

/**
 * 护士模块控制器类
 * @author 闫涛
 *
 */
public class NurseController implements AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		NurseModel nurseModel = new NurseModel();
		nurseModel.setJspParamsVo(jspParamsVo);
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		// 处理顶部和左侧菜单
		List<MenuVo> topMenus = MenuDetailModel.getTopMenuFromDb(hospitalId, roleId);
		int selectedTopMenuId = Integer.parseInt(AppUtil.getParameter(request, "stmId", "0"));
		System.out.println("selectedTopMenuId=" + selectedTopMenuId + "!");
		if (0 == selectedTopMenuId) {
			selectedTopMenuId = topMenus.iterator().next().getMenuId();
		}
		List<MenuVo> sidebarMenus = MenuDetailModel.getSidebarMenuFromDb(hospitalId, roleId, selectedTopMenuId);
		for (MenuVo vo1 : sidebarMenus) {
			System.out.println("menu:" + vo1.getMenuName() + "-" + vo1.getMenuId() + "!");
		}
		int selectedSidebarMenuId = Integer.parseInt(AppUtil.getParameter(request, "ssmId", "0"));
		System.out.println("selectedSidebarMenuId=" + selectedSidebarMenuId + "!");
		if (0 == selectedSidebarMenuId && sidebarMenus != null && sidebarMenus.size() > 0) {
			selectedSidebarMenuId = sidebarMenus.iterator().next().getMenuId();
		}
		// 根据不同命令调用不同的函数来完成不同的功能
		switch (cmd) {
		case "showPatientEnroll":
			showPatientEnroll(request, response, nurseModel);
			break;
		case "showPatientQuit":
			showPatientQuit(request, response, nurseModel);
			break;
		case "showCheckDoctorAdvice":
			showCheckDoctorAdvice(request, response, nurseModel);
			break;
		case "showRecheckDoctorAdvice":
			showRecheckDoctorAdvice(request, response, nurseModel);
			break;
		case "showFillCureBill":
			showFillCureBill(request, response, nurseModel);
			break;
		case "showNurseAdjustDoctorAdvice":
			showNurseAdjustDoctorAdvice(request, response, nurseModel);
			break;
		}
		
		nurseModel.setTopMenus(topMenus);
		nurseModel.setSelectedTopMenuId(selectedTopMenuId);
		nurseModel.setSidebarMenus(sidebarMenus);
		nurseModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("followupModel", nurseModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", nurseModel);
        requestDispatcher.forward(request, response);
	}
	
	public static void doAjaxGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		FollowupModel patientModel = new FollowupModel();
		switch (cmd) {
		case "test":
			System.out.println("test");
			break;
		}
		
	}
	
	/**
	 * 显示患者入院菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPatientEnroll(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
	
	/**
	 * 显示患者出院菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPatientQuit(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
	
	/**
	 * 显示审核医嘱菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCheckDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
	
	/**
	 * 显示重新审核医嘱菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showRecheckDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
	
	/**
	 * 显示填写治疗单菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showFillCureBill(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
	
	/**
	 * 显示护士调整治疗单菜单页面
	 * @param nurseModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showNurseAdjustDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, NurseModel nurseModel) {
	}
}
