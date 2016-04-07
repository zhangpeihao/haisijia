package com.haisijia.model;

import java.io.Serializable;

public class CmdHttpRequestVo implements Serializable {
	public int getCmdHttpGetId() {
		return cmdHttpGetId;
	}
	public void setCmdHttpGetId(int cmdHttpGetId) {
		this.cmdHttpGetId = cmdHttpGetId;
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
	private int cmdHttpGetId = 0;
	private int cmdId = 0;
	private String cmdName = null;
	private String className = null;
	private String methodName = null;
	/**
	 * 
	 */
	private static final long serialVersionUID = -7771473059216254044L;
}
