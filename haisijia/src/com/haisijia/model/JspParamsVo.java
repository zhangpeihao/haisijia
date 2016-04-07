package com.haisijia.model;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class JspParamsVo {
	public JspParamsVo() {
		params = new HashMap<>();
	}
	
	public void setParamValue(String paramName, String paramValue) {
		params.put(paramName, paramValue);
	}
	
	public Optional<String> getParamValue(String paramName) {
		return Optional.ofNullable(params.get(paramName));
	}
	
	public String getParamName() {
		return paramName;
	}

	public void setParamName(String paramName) {
		this.paramName = paramName;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	private Map<String, String> params = null;
	private String paramName = null;
	private String value = null;
	private String defaultValue = null;
}
