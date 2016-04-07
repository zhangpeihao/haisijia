package com.haisijia.model.dev;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jdbc.JdbcResult;
import com.haisijia.model.AppModel;
import com.haisijia.model.AppSql;
import com.haisijia.model.JspParamsVo;
import com.haisijia.yhis.model.PatientVo;

public class DevPageModel extends AppModel {
	/**
	 * 向数据库中添加新页面定义信息
	 * @param pageVo
	 * @return
	 */
	public static long addPage(DevPageVo pageVo) {
		/*Function<String, Integer> cmdDao = CmdModel::addCmd;
		int cmdId = cmdDao.apply(pageVo.getCmdName());*/
		return 1;
	}
	

	
	/**
	 * 根据模询条件求出符合条件的页面列表
	 * @param params
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static List<DevPageVo> getDevPages(Map<String, String> params, int startIndex, int amount) {
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
			stmt.setInt(1, Integer.parseInt(dbParams.get("startIndex")));
			stmt.setInt(2, Integer.parseInt(dbParams.get("amount")));
		};
		FResetSetter<DevPageVo> setter = (ResultSet rst) -> {  
	        List<DevPageVo> items = new ArrayList<DevPageVo>();  
	        DevPageVo devPageVo = null;  
			Map<String, String> pageParams = null;
	        while (rst.next()) {  
	        	devPageVo = new DevPageVo();
	        	devPageVo.setCmdId(rst.getInt(1));
	        	devPageVo.setCmdName(rst.getString(2));
	        	devPageVo.setCmdHttpRequestId(rst.getInt(3));
	        	devPageVo.setClassName(rst.getString(4));
	        	devPageVo.setMethodName(rst.getString(5));
	        	pageParams = getCmdJspParams(devPageVo.getCmdId()).get(0);
	        	devPageVo.setTitle(pageParams.get("1"));
	        	devPageVo.setHeader(pageParams.get("2"));
	        	devPageVo.setSidebar(pageParams.get("3"));
	        	devPageVo.setBody(pageParams.get("4"));
	        	devPageVo.setFooter(pageParams.get("5"));
	            items.add(devPageVo);  
	        }  
	        return items;  
	    };
	    Map<String, String> cond = new HashMap<>();
	    cond.put("startIndex", "" + (startIndex - 1));
	    cond.put("amount", "" + amount);
	    List<DevPageVo> devPages = JdbcDao.executeQuery(AppSql.SQL_GET_DEV_PAGES, binder, cond, setter);
		return devPages;
	}

	/**
	 * 根据模询条件求出符合条件的页面列表
	 * @param params
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static int getDevPagesTotal(Map<String, String> params) {
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
		};
		FResetSetter<Integer> setter = (ResultSet rst) -> {  
	        List<Integer> items = new ArrayList<>();  
	        PatientVo patientVo = null;  
	        while (rst.next()) {  
	            items.add(rst.getInt(1));  
	        }  
	        return items;  
	    };
	    Map<String, String> cond = new HashMap<>();
	    List<Integer> recs = JdbcDao.executeQuery(AppSql.SQL_GET_DEV_PAGES_TOTAL, binder, cond, setter);
	    if (recs.size() > 0) {
	    	return recs.get(0);
	    } else {
	    	return 0;
	    }
	}
	
	public static List<Map<String, String>> getCmdJspParams(int cmdId) {
		FParamBinder<Integer> binder = (PreparedStatement stmt,
				Integer dbParams) -> {
			stmt.setInt(1, dbParams.intValue());
		};
		FResetSetter<Map<String, String>> setter = (ResultSet rst) -> {  
	        List<Map<String, String>> items = new ArrayList<Map<String, String>>();  
	        Map<String, String> pageParams = null;  
        	pageParams = new HashMap<>();
	        while (rst.next()) {  
	        	pageParams.put("" + rst.getInt(2), rst.getString(3));
	        }  
            items.add(pageParams);  
	        return items;  
	    };
	    List<Map<String, String>> devPages = JdbcDao.executeQuery(AppSql.SQL_GET_JSP_PARAMS, binder, Integer.valueOf(cmdId), setter);
		return devPages;
	}
	
	public JspParamsVo getJspParamsVo() {
		return jspParamsVo;
	}

	public void setJspParamsVo(JspParamsVo jspParamsVo) {
		this.jspParamsVo = jspParamsVo;
	}

	public List<DevPageVo> getDevPages() {
		return devPages;
	}



	public void setDevPages(List<DevPageVo> devPages) {
		this.devPages = devPages;
	}



	public int getDevPagesTotal() {
		return devPagesTotal;
	}



	public void setDevPagesTotal(int devPagesTotal) {
		this.devPagesTotal = devPagesTotal;
	}

	private JspParamsVo jspParamsVo = null;
	private List<DevPageVo> devPages = null;
	private int devPagesTotal = 0;
}
