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
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;
import com.haisijia.yhis.model.ScheduleModel;

/**
 * 处理医生、护士、患者排班
 * @author 闫涛
 *
 */
public class ScheduleController implements AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		ScheduleModel scheduleModel = new ScheduleModel();
		scheduleModel.setJspParamsVo(jspParamsVo);
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
		case "showScheduleDoctorTemplate":
			showScheduleDoctorTemplate(request, response, scheduleModel);
			break;
		}
		
		scheduleModel.setTopMenus(topMenus);
		scheduleModel.setSelectedTopMenuId(selectedTopMenuId);
		scheduleModel.setSidebarMenus(sidebarMenus);
		scheduleModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("scheduleModel", scheduleModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", scheduleModel);
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
	 * 显示医生排班模板页面
	 * @param scheduleModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showScheduleDoctorTemplate(HttpServletRequest request,
            HttpServletResponse response, ScheduleModel scheduleModel) {
	}
}
