package com.haisijia.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;


public class AppModel {
	public JspParamsVo getJspParamsVo() {
		return new JspParamsVo();
	}
	
	public List<MenuVo> getTopMenus() {
		return topMenus;
	}
	public void setTopMenus(List<MenuVo> topMenus) {
		this.topMenus = topMenus;
	}
	public int getSelectedTopMenuId() {
		return selectedTopMenuId;
	}
	public void setSelectedTopMenuId(int selectedTopMenuId) {
		this.selectedTopMenuId = selectedTopMenuId;
	}
	public List<MenuVo> getSidebarMenus() {
		return sidebarMenus;
	}
	public void setSidebarMenus(List<MenuVo> sidebarMenus) {
		this.sidebarMenus = sidebarMenus;
	}

	public int getSelectedSidebarMenuId() {
		return selectedSidebarMenuId;
	}

	public void setSelectedSidebarMenuId(int selectedSidebarMenuId) {
		this.selectedSidebarMenuId = selectedSidebarMenuId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public long getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(long hospitalId) {
		this.hospitalId = hospitalId;
	}

	private List<MenuVo> topMenus = null; // ��hospitalIdΪKeyֵ
	private int selectedTopMenuId = 0;
	private List<MenuVo> sidebarMenus = null;
	private int selectedSidebarMenuId = 0;
	private long userId = 0;
	private String userName = null;
	private int roleId = 0;
	private long hospitalId = 0;
}
