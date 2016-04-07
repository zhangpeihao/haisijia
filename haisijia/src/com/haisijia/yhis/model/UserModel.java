package com.haisijia.yhis.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.json.JSONObject;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;


public class UserModel {
	/**
	 * 通过userId获取用户的基本信息
	 * @param userId
	 * @return
	 * 【闫涛 2016.03.05】初始版本
	 */
	public static Optional<UserVo> getUserVoById(long userId) {
		String sql = "select user_name, login_name, login_pwd,"
				+ "role_id, hospital_id from t_user where user_id=?";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			stmt.setLong(1, Long.parseLong(param));
		};
		FResetSetter<UserVo> setter = (ResultSet rst) -> {  
	        List<UserVo> users = new ArrayList<UserVo>();  
	        UserVo userVo = null;  
	        while (rst.next()) {  
	            userVo = new UserVo();
	            userVo.setUserName(rst.getString(1));
	            userVo.setLoginName(rst.getString(2));
	            userVo.setLoginPwd(rst.getString(3));
	            userVo.setRoleId(rst.getInt(4));
	            userVo.setHospitalId(rst.getLong(5));
	            users.add(userVo);  
	        }  
	        return users;  
	    };
	    List<UserVo> ids = JdbcDao.executeQuery(sql, binder, "" + userId, setter);
	    UserVo userVo = null;
	    if (ids.size() >= 1) {
	    	userVo = ids.get(0);
	    	userVo.setUserId(userId);
	    }
		return Optional.ofNullable(userVo);
	}
}
