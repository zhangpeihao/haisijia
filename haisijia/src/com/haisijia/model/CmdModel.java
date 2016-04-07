package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class CmdModel {
	public static List<CmdVo> getCmds() {
		String sql = "select cmd_id, cmd_name from t_cmd";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<CmdVo> setter = (ResultSet rst) -> {  
	        List<CmdVo> items = new ArrayList<>();  
	        CmdVo item = null;  
	        while (rst.next()) {  
	            item = new CmdVo();
	            item.setCmdId(rst.getInt(1));
	            item.setCmdName(rst.getString(2));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    return JdbcDao.executeQuery(sql, binder, "", setter);		
	}
}
