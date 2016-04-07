package com.haisijia.model.dev;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jdbc.JdbcResult;
import com.haisijia.model.AppSql;
import com.haisijia.yhis.model.PatientVo;

/**
 * 管理t_cmd_jsp_params表，维护URL与页面参数的对应关系
 * @author 闫涛
 *
 */
public class CmdJspParamsModel {
	/**
	 * 向t_cmd表添加记录
	 * @param cmdName
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static int addCmdJspParams(Connection conn, int cmdId, DevPageVo devPageVo) {
		switch (devPageVo.getJspTemplateId()) {
		case 2:
			return addCmdJspParamsT2(conn, cmdId, devPageVo);
		}
		return 1;
	}
	
	public static int addCmdJspParamsT2(Connection conn, int cmdId, DevPageVo devPageVo) {
		addCmdJspParamT2(conn, cmdId, 1, devPageVo.getTitle());
		addCmdJspParamT2(conn, cmdId, 2, devPageVo.getHeader());
		addCmdJspParamT2(conn, cmdId, 3, devPageVo.getSidebar());
		addCmdJspParamT2(conn, cmdId, 4, devPageVo.getBody());
		addCmdJspParamT2(conn, cmdId, 5, devPageVo.getFooter());
		return 1;
	}
	
	public static int addCmdJspParamT2(Connection conn, int cmdId, int idx, String val) {
		FParamBinder<Map<String, Object>> binder = (PreparedStatement stmt,
				Map<String, Object> dbParams) -> {
			stmt.setInt(1, (Integer)dbParams.get("cmdId"));
			stmt.setInt(2, (Integer)dbParams.get("cjtParamId"));
			stmt.setString(3, (String)dbParams.get("value"));
		};
		Map<String, Object> params = new HashMap<>();
		params.put("cmdId", cmdId);
		params.put("cjtParamId", idx);
		params.put("value", val);
		JdbcResult rst = JdbcDao.executeUpdate(conn, AppSql.SQL_ADD_CMD_JSP_PARAMS, binder, params);
		long cmdHttpRequestId = 0;
		if (1 == rst.getAffectedRows()) {
			cmdHttpRequestId = (int)rst.getPk();
		}
		return (int)cmdHttpRequestId;
		
	}
}
