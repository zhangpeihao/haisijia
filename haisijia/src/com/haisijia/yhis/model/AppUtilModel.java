package com.haisijia.yhis.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.model.AppModel;
import com.haisijia.model.JspParamsVo;

public class AppUtilModel extends AppModel {
	/**
	 * 处理下拉列表框时工具函数
	 * @param loginName
	 * @return
	 * 【闫涛 2016.03.08】初始版本
	 */
	public static List<KeyValueVo> getKeyValues(String sql) {
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<KeyValueVo> setter = (ResultSet rst) -> {  
	        List<KeyValueVo> items = new ArrayList<KeyValueVo>();  
	        KeyValueVo item = null;  
	        while (rst.next()) {
	        	item = new KeyValueVo();
	            item.setKey(rst.getInt(1));
	            item.setValue(rst.getString(2));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    return JdbcDao.executeQuery(sql, binder, "", setter);
	}
}
