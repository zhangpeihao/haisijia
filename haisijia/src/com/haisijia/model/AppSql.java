package com.haisijia.model;

public class AppSql {
	public final static String SQL_ADD_CMD = "insert into t_cmd(cmd_name) values(?)";
	public final static String SQL_ADD_CMD_JSP_TEMPLATE = "insert into t_cmd_jsp_template(cmd_id, jsp_template_id) values(?, ?)";
	public final static String SQL_ADD_CMD_HTTP_REQUEST = "insert into t_cmd_http_request(cmd_id, class_name, method_name) values(?, ?, ?)";
	public final static String SQL_ADD_CMD_JSP_PARAMS = "insert into t_cmd_jsp_params(cmd_id, c_j_t_param_id, value) values(?, ?, ?)";
	//
	public final static String SQL_GET_DEV_PAGES = "select C.cmd_id, C.cmd_name, H.cmd_http_request_id, "
			+ "H.class_name, H.method_name from t_cmd C, t_cmd_http_request H where C.cmd_id=H.cmd_id and H.method_name != 'doAjaxGet' "
			+ "order by cmd_id desc limit ?, ?";
	public final static String SQL_GET_DEV_PAGES_TOTAL = "select count(H.cmd_http_request_id) "
			+ " from t_cmd C, t_cmd_http_request H where C.cmd_id=H.cmd_id and H.method_name != 'doAjaxGet' ";
	public final static String SQL_GET_JSP_PARAMS = "select cmd_jsp_param_id, c_j_t_param_id, value from t_cmd_jsp_params where cmd_id=?";
}
