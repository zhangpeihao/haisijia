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
 * 管理t_cmd_http_request表，维护URL与控制器类的对应关系
 * @author 闫涛
 *
 */
public class CmdHttpRequestModel {
	/**
	 * 向t_cmd表添加记录
	 * @param cmdName
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static int addCmdHttpRequest(Connection conn, int cmdId, String className, String methodName) {
		FParamBinder<Map<String, Object>> binder = (PreparedStatement stmt,
				Map<String, Object> dbParams) -> {
			stmt.setInt(1, (Integer)dbParams.get("cmdId"));
			stmt.setString(2, (String)dbParams.get("className"));
			stmt.setString(3, (String)dbParams.get("methodName"));
		};
		Map<String, Object> params = new HashMap<>();
		params.put("cmdId", cmdId);
		params.put("className", className);
		params.put("methodName", methodName);
		JdbcResult rst = JdbcDao.executeUpdate(conn, AppSql.SQL_ADD_CMD_HTTP_REQUEST, binder, params);
		long cmdHttpRequestId = 0;
		if (1 == rst.getAffectedRows()) {
			cmdHttpRequestId = (int)rst.getPk();
		}
		return (int)cmdHttpRequestId;
	}
}
