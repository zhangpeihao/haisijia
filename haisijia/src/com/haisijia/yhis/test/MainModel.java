package com.haisijia.yhis.test;

import com.haisijia.model.AppModel;
import com.haisijia.model.JspParamsVo;

public class MainModel extends AppModel {
	public JspParamsVo getJspParamsVo() {
		return jspParamsVo;
	}

	public void setJspParamsVo(JspParamsVo jspParamsVo) {
		this.jspParamsVo = jspParamsVo;
	}

	private JspParamsVo jspParamsVo = null;
}
