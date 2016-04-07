package com.haisijia.model.dev;

import java.io.Serializable;

public class DevPageVo implements Serializable, Comparable<DevPageVo> {
	@Override
	public boolean equals(Object obj) {
		DevPageVo pageVo = null;
		if (obj instanceof DevPageVo) {
			pageVo = (DevPageVo)obj;
		}
		return cmdName.equals(pageVo.getCmdName());
	}
	
	@Override
	public int compareTo(DevPageVo obj) {
		return 1;
	}
	
	@Override
	public int hashCode() {
		return cmdName.hashCode();
	}
	
	public int getCmdId() {
		return cmdId;
	}
	public void setCmdId(int cmdId) {
		this.cmdId = cmdId;
	}
	public String getCmdName() {
		return cmdName;
	}
	public void setCmdName(String cmdName) {
		this.cmdName = cmdName;
	}
	public int getCmdHttpRequestId() {
		return cmdHttpRequestId;
	}

	public void setCmdHttpRequestId(int cmdHttpRequestId) {
		this.cmdHttpRequestId = cmdHttpRequestId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getMethodName() {
		return methodName;
	}
	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}
	public int getJspTemplateId() {
		return jspTemplateId;
	}
	public void setJspTemplateId(int jspTemplateId) {
		this.jspTemplateId = jspTemplateId;
	}
	public String getJspTemplateFile() {
		return jspTemplateFile;
	}
	public void setJspTemplateFile(String jspTemplateFile) {
		this.jspTemplateFile = jspTemplateFile;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getSidebar() {
		return sidebar;
	}
	public void setSidebar(String sidebar) {
		this.sidebar = sidebar;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getFooter() {
		return footer;
	}
	public void setFooter(String footer) {
		this.footer = footer;
	}
	private int cmdId = 0;
	private String cmdName = null;
	private int cmdHttpRequestId = 0;
	private String className = null;
	private String methodName = null;
	private int jspTemplateId = 0;
	private String jspTemplateFile = null;
	private String title = null;
	private String header = null;
	private String sidebar = null;
	private String body = null;
	private String footer = null;
	private static final long serialVersionUID = 1L;
}
