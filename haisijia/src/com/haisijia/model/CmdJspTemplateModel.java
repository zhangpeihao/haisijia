package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class CmdJspTemplateModel {
	/**
	 * 获取URL对应的页面参数，在系统启动时调用
	 * @return
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static List<CmdJspTemplateVo> getCmdJspTemplates() {
		String sql = "select C.cmd_name, T.jsp_template_file from t_cmd_jsp_template J, "
				+ "t_jsp_template T, t_cmd C where J.jsp_template_id=T.jsp_template_id "
				+ "and J.cmd_id=C.cmd_id";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<CmdJspTemplateVo> setter = (ResultSet rst) -> {  
	        List<CmdJspTemplateVo> items = new ArrayList<>();  
	        CmdJspTemplateVo item = null;  
	        while (rst.next()) {  
	            item = new CmdJspTemplateVo();
	            item.setCmd(rst.getString(1));
	            item.setJspTemplateFile(rst.getString(2));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    return JdbcDao.executeQuery(sql, binder, "", setter);
	}
}
