package com.haisijia.model;

public class AppServiceVo {
	public long getAppServiceId() {
		return appServiceId;
	}
	public void setAppServiceId(long appServiceId) {
		this.appServiceId = appServiceId;
	}
	public String getAppServiceName() {
		return appServiceName;
	}
	public void setAppServiceName(String appServiceName) {
		this.appServiceName = appServiceName;
	}
	public String getAppServiceClass() {
		return appServiceClass;
	}
	public void setAppServiceClass(String appServiceClass) {
		this.appServiceClass = appServiceClass;
	}
	public String getAppServiceMethod() {
		return appServiceMethod;
	}
	public void setAppServiceMethod(String appServiceMethod) {
		this.appServiceMethod = appServiceMethod;
	}
	private long appServiceId = 0;
	private String appServiceName = null;
	private String appServiceClass = null;
	private String appServiceMethod = null;
}
