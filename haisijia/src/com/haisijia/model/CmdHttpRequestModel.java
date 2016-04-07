package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class CmdHttpRequestModel {
	/**
	 * 获取URL与控制器对应关系，在系统启动时调用
	 * @return
	 * 【闫涛 2016.03.06】初始版本
	 */
	public static List<CmdHttpRequestVo> getCmdHttpRequestVos() {
		String sql = "select C.cmd_name, G.class_name, G.method_name "
				+ "from t_cmd C, t_cmd_http_request G where C.cmd_id=G.cmd_id";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<CmdHttpRequestVo> setter = (ResultSet rst) -> {  
	        List<CmdHttpRequestVo> items = new ArrayList<>();  
	        CmdHttpRequestVo item = null;  
	        while (rst.next()) {  
	            item = new CmdHttpRequestVo();
	            item.setCmdName(rst.getString(1));
	            item.setClassName(rst.getString(2));
	            item.setMethodName(rst.getString(3));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    return JdbcDao.executeQuery(sql, binder, "", setter);		
	}
}
