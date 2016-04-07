package com.haisijia.model.dev;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jdbc.JdbcResult;
import com.haisijia.model.AppSql;
import com.haisijia.yhis.model.PatientVo;

/**
 * 管理t_cmd表
 * @author 闫涛
 *
 */
public class CmdModel {
	/**
	 * 向t_cmd表添加记录
	 * @param cmdName
	 * @return
	 * 【闫涛 2016.04.01】初始版本
	 */
	public static int addCmd(Connection conn, String cmdName) {
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			stmt.setString(1, param);
		};
		JdbcResult rst = JdbcDao.executeUpdate(conn, AppSql.SQL_ADD_CMD, binder, cmdName);
		long cmdId = 0;
		if (1 == rst.getAffectedRows()) {
			cmdId = (int)rst.getPk();
		}
		return (int)cmdId;
	}
}
