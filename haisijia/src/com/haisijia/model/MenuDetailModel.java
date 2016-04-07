package com.haisijia.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;

public class MenuDetailModel extends AppModel {
	public static List<MenuVo> getTopMenuFromDb(long hospitalId, int roleId) {
		return getTopMenuFromDb(hospitalId, roleId, 0, 1);
	}
	
	public static List<MenuVo> getSidebarMenuFromDb(long hospitalId, int roleId, int parentId) {
		return getTopMenuFromDb(hospitalId, roleId, parentId, 2);
	}
	
	private static List<MenuVo> getTopMenuFromDb(long hospitalId, int roleId, int parentId, int menuTypeId) {
		String sql = "select M.menu_id, M.menu_name, M.menu_url from t_menu M, "
				+ "t_menu_detail D where M.menu_id=D.menu_id and D.menu_type_id=? "
				+ "and D.hospital_id=? and D.role_id=? and D.parent_id=?";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			JSONObject json = new JSONObject(param);
			stmt.setInt(1, json.getInt("menuTypeId"));
			stmt.setLong(2, json.getLong("hospitalId"));
			stmt.setInt(3, json.getInt("roleId"));
			stmt.setInt(4, json.getInt("parentId"));
		};
		FResetSetter<MenuVo> setter = (ResultSet rst) -> {  
	        List<MenuVo> items = new ArrayList<>();
	        MenuVo item = null;  
	        while (rst.next()) {  
	            item = new MenuVo();
	            item.setMenuId(rst.getInt(1));
	            item.setMenuName(rst.getString(2));
	            item.setMenuUrl(rst.getString(3));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    json.put("menuTypeId", menuTypeId);
	    json.put("hospitalId", hospitalId);
	    json.put("roleId", roleId);
	    json.put("parentId", parentId);
	    return JdbcDao.executeQuery(sql, binder, json.toString(), setter);
	}
}
