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
import com.haisijia.yhis.model.FinanceModel;
import com.haisijia.yhis.model.FollowupModel;
import com.haisijia.yhis.model.HomeModel;
import com.haisijia.yhis.model.PatientModel;
import com.haisijia.yhis.model.PatientVo;

/**
 * 财务控制器类
 * @author 闫涛
 *
 */
public class FinanceController implements AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {
		String template = AppServlet.getTemplate(cmd);
		JspParamsVo jspParamsVo = AppServlet.getJspParamsVo(cmd);
		FinanceModel financeModel = new FinanceModel();
		financeModel.setJspParamsVo(jspParamsVo);
		// 从Redis中取出用户信息
		String[] userFields = {"u" + request.getAttribute("userId"), "roleId", "hospitalId", "userName"};
		List<String> values = JedisEngine.getJedisValue(JedisEngine::getMap, userFields);
		Iterator<String> itr = values.iterator();
		long userId = Long.parseLong((String)request.getAttribute("userId"));
		financeModel.setUserId(userId);
		int roleId = Integer.parseInt((itr.hasNext())?itr.next():"0");
		financeModel.setRoleId(roleId);
		long hospitalId = Long.parseLong((itr.hasNext())?itr.next():"0");
		financeModel.setHospitalId(hospitalId);
		financeModel.setUserName((itr.hasNext())?itr.next():"未知");
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
		case "showCreateDeposit":
			showCreateDeposit(request, response, financeModel);
			break;
		case "showChargeDeposit":
			showChargeDeposit(request, response, financeModel);
			break;
		case "showCancelDeposit":
			showCancelDeposit(request, response, financeModel);
			break;
		case "showDailyBill":
			showDailyBill(request, response, financeModel);
			break;
		case "showMonthBill":
			showMonthBill(request, response, financeModel);
			break;
		case "showMonthSettle":
			showMonthSettle(request, response, financeModel);
			break;
		case "showCenterDailyReport":
			showCenterDailyReport(request, response, financeModel);
			break;
		case "showCenterDailyReportDesign":
			showCenterDailyReportDesign(request, response, financeModel);
			break;
		case "showCenterMonthReport":
			showCenterMonthReport(request, response, financeModel);
			break;
		case "showCenterMonthReportDesign":
			showCenterMonthReportDesign(request, response, financeModel);
			break;
		case "showBillPrint":
			showBillPrint(request, response, financeModel);
			break;
		case "showBillDesign":
			showBillDesign(request, response, financeModel);
			break;
		}
		
		financeModel.setTopMenus(topMenus);
		financeModel.setSelectedTopMenuId(selectedTopMenuId);
		financeModel.setSidebarMenus(sidebarMenus);
		financeModel.setSelectedSidebarMenuId(selectedSidebarMenuId);
		
        AppServiceRegistry.getInstance().putModel("financeModel", financeModel);        
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher(  
                template);        
        request.setAttribute("model", financeModel);
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
	 * 显示财务-押金开户菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCreateDeposit(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-押金充值菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showChargeDeposit(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-押金销户菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCancelDeposit(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-收费管理-日收费单菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showDailyBill(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-收费管理-月收费单菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showMonthBill(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-收费管理-患者月结算菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showMonthSettle(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-中心日报表菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCenterDailyReport(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-中心日报表设计菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCenterDailyReportDesign(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-中心月报表菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCenterMonthReport(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-中心月报表设计菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showCenterMonthReportDesign(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-票据打印菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showBillPrint(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
	
	/**
	 * 显示财务-财务报表-票据设计菜单页面
	 * @param financeModel
	 * 【闫涛 2016.03.30】初始版本
	 */
	private static void showBillDesign(HttpServletRequest request,
            HttpServletResponse response, FinanceModel financeModel) {
	}
}
