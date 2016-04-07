package com.haisijia.yhis.model;

import java.io.Serializable;

public class UserVo implements Serializable {
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
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public long getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(long hospitalId) {
		this.hospitalId = hospitalId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	private long hospitalId = 0;
	private long userId = 0;
	private int roleId = 0;
	private String userName = null;
	private String loginName = null;
	private String loginPwd = null;
	/**
	 * 
	 */
	private static final long serialVersionUID = -2760569656567793932L;
}
