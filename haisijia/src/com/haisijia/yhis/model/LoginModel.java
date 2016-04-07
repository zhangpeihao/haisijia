package com.haisijia.yhis.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.haisijia.common.AppUtil;
import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.model.AppModel;
import com.haisijia.model.JspParamsVo;

public class LoginModel extends AppModel {
	/**
	 * 通过登录名口令求出userId
	 * @param loginName
	 * @param loginPwd
	 * 【闫涛 2016.03.02】初始版本
	 */
	public static long loginUser(String loginName, String loginPwd) {
		String sql = "select user_id from t_user where login_name=? and login_pwd=?";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			JSONObject json = new JSONObject(param);
			stmt.setString(1, json.getString("loginName"));
			stmt.setString(2, json.getString("loginPwd"));
		};
		FResetSetter<Long> setter = (ResultSet rst) -> {  
	        List<Long> items = new ArrayList<Long>();  
	        Long item = null;  
	        while (rst.next()) {  
	            item = Long.valueOf(rst.getLong(1));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    JSONObject json = new JSONObject();
	    json.put("loginName", loginName);
	    json.put("loginPwd", loginPwd);
	    List<Long> ids = JdbcDao.executeQuery(sql, binder, json.toString(), setter);
	    long userId = 0;
	    if (ids.size() >= 1) {
	    	userId = ids.get(0).longValue();
	    }
		return userId;
	}
	
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public JspParamsVo getJspParamsVo() {
		return jspParamsVo;
	}

	public void setJspParamsVo(JspParamsVo jspParamsVo) {
		this.jspParamsVo = jspParamsVo;
	}
	public String getOriginUrl() {
		return originUrl;
	}

	public void setOriginUrl(String originUrl) {
		this.originUrl = originUrl;
	}
	private long userId = 0;
	private String userName = null;
	private String loginName = null;
	private String loginPwd = null;
	private JspParamsVo jspParamsVo = null;
	private String originUrl = null;
}
