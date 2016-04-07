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
import com.haisijia.yhis.model.DoctorModel;
import com.haisijia.yhis.model.FollowupModel;
import com.haisijia.yhis.model.HomeModel;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

/**
 * 医生控制器
 * @author 闫涛
 *
 */
public class DoctorController implements AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		DoctorModel doctorModel = new DoctorModel();
		doctorModel.setJspParamsVo(jspParamsVo);
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
		case "showPatientEvaluate":
			showPatientEvaluate(request, response, doctorModel);
			break;
		case "showPatientCurePlan":
			showPatientCurePlan(request, response, doctorModel);
			break;
		case "showCreateDoctorAdvice":
			showCreateDoctorAdvice(request, response, doctorModel);
			break;
		case "showDoctorAdviceTemplate":
			showDoctorAdviceTemplate(request, response, doctorModel);
			break;
		case "showPreCureBill":
			showPreCureBill(request, response, doctorModel);
			break;
		case "showPostCureBill":
			showPostCureBill(request, response, doctorModel);
			break;
		case "showUpdateDoctorAdvice":
			showUpdateDoctorAdvice(request, response, doctorModel);
			break;
		case "showAdjustDoctorAdvice":
			showAdjustDoctorAdvice(request, response, doctorModel);
			break;
		}
		
		doctorModel.setTopMenus(topMenus);
		doctorModel.setSelectedTopMenuId(selectedTopMenuId);
		doctorModel.setSidebarMenus(sidebarMenus);
		doctorModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("followupModel", doctorModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", doctorModel);
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
	 * 显示患者入院评估页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPatientEvaluate(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示制定患者治疗方案页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPatientCurePlan(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示开医嘱菜单项页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCreateDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示医嘱模板维护菜单项页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showDoctorAdviceTemplate(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示预填写治疗单菜单页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPreCureBill(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示治疗单总结菜单页面
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showPostCureBill(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示修改医嘱菜单页面（当护士审核医嘱有错误时返回给医生进行修改）
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showUpdateDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
	
	/**
	 * 显示调整医嘱菜单页面（根据透析治疗具体情况，增删改治疗、药品、耗材、检查项目）
	 * @param doctorModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showAdjustDoctorAdvice(HttpServletRequest request,
            HttpServletResponse response, DoctorModel doctorModel) {
	}
}
