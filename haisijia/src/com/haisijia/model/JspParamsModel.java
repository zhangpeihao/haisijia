package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class JspParamsModel {
	public static List<JspParamsVo> getCmdJspParams(int cmdId) {
		String sql = "select J.param, J.default_value, P.value from t_cmd_jsp_params P, "
				+ "t_cmd C, t_c_j_t_param J where C.cmd_id=? "
				+ "and P.cmd_id=C.cmd_id and P.c_j_t_param_id=J.c_j_t_param_id";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			JSONObject json = new JSONObject(param);
			stmt.setInt(1, json.getInt("cmdId"));
		};
		FResetSetter<JspParamsVo> setter = (ResultSet rst) -> {  
	        List<JspParamsVo> items = new ArrayList<>();  
	        JspParamsVo item = null;  
	        while (rst.next()) {  
	            item = new JspParamsVo();
	            item.setParamName(rst.getString(1));
	            item.setDefaultValue(rst.getString(2));
	            item.setValue(rst.getString(3));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    json.put("cmdId", cmdId);
	    return JdbcDao.executeQuery(sql, binder, json.toString(), setter);
	}
}
