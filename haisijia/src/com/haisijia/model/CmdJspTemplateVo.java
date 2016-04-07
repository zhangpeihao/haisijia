package com.haisijia.model;

public class CmdJspTemplateVo {
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
	public int getCmdJspTemplateId() {
		return cmdJspTemplateId;
	}
	public void setCmdJspTemplateId(int cmdJspTemplateId) {
		this.cmdJspTemplateId = cmdJspTemplateId;
	}
	public String getCmd() {
		return cmd;
	}
	public void setCmd(String cmd) {
		this.cmd = cmd;
	}
	public String getCmdDesc() {
		return cmdDesc;
	}
	public void setCmdDesc(String cmdDesc) {
		this.cmdDesc = cmdDesc;
	}
	private int jspTemplateId = 0;
	private String jspTemplateFile = null;
	private int cmdJspTemplateId = 0;
	private String cmd = null;
	private String cmdDesc = null;
}
