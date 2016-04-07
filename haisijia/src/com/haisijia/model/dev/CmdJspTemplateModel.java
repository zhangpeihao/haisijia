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
 * 管理t_cmd_jsp_template表，维护URL与页面模板的对应关系
 * @author 闫涛
 *
 */
public class CmdJspTemplateModel {
	/**
	 * 向t_cmd表添加记录
	 * @param cmdName
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static int addCmdJspTemplate(Connection conn, int cmdId, int templateId) {
		FParamBinder<Map<String, Integer>> binder = (PreparedStatement stmt,
				Map<String, Integer> dbParams) -> {
			stmt.setInt(1, dbParams.get("cmdId"));
			stmt.setInt(2, dbParams.get("templateId"));
		};
		Map<String, Integer> params = new HashMap<>();
		params.put("cmdId", cmdId);
		params.put("templateId", templateId);
		JdbcResult rst = JdbcDao.executeUpdate(conn, AppSql.SQL_ADD_CMD_JSP_TEMPLATE, binder, params);
		long cmdJspTemplateId = 0;
		if (1 == rst.getAffectedRows()) {
			cmdJspTemplateId = (int)rst.getPk();
		}
		return (int)cmdJspTemplateId;
	}
}
