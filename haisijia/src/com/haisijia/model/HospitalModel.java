package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class HospitalModel extends AppModel {
	public static List<Long> getHospitalIds() {
		String sql = "select hospital_id from t_hospital";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
		};
		FResetSetter<Long> setter = (ResultSet rst) -> {  
	        List<Long> items = new ArrayList<>();
	        while (rst.next()) {  
	            items.add(rst.getLong(1));  
	        }  
	        return items;  
	    };
	    JSONObject json = new JSONObject();
	    return JdbcDao.executeQuery(sql, binder, "", setter);		
	}
}
