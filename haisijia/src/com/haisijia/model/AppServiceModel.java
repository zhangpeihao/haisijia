package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.common.AppConstants;
import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class AppServiceModel {
	/**
	 * 获取应用服务信息，主要用于系统启动时
	 * @return
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static List<AppServiceVo> getAppServices() {
		String sql = "select app_service_name, app_service_class, app_service_method from t_app_service";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<AppServiceVo> setter = (ResultSet rst) -> {  
	        List<AppServiceVo> items = new ArrayList<>();  
	        AppServiceVo item = null;  
	        while (rst.next()) {  
	            item = new AppServiceVo();
	            item.setAppServiceName(rst.getString(1));
	            item.setAppServiceClass(rst.getString(2));
	            item.setAppServiceMethod(rst.getString(3));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    return JdbcDao.executeQuery(sql, binder, "", setter);		
	}
}
