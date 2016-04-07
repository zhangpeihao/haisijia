package com.haisijia.model;

import java.io.Serializable;

public class MenuVo implements Serializable {
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	private int menuId = 0;
	private String menuName = null;
	private String menuUrl = null;
	/**
	 * 
	 */
	private static final long serialVersionUID = -7847050078360035880L;

}
