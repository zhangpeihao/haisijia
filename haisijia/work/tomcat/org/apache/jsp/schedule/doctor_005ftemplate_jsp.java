/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M3
 * Generated at: 2016-04-08 03:41:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.schedule;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class doctor_005ftemplate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<div id=\"main-content\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-md-12\">\r\n");
      out.write("\t\t\t\t<!-- BOX -->\r\n");
      out.write("\t\t\t\t<div class=\"box border blue\">\r\n");
      out.write("\t\t\t\t\t<div class=\"box-title\">\r\n");
      out.write("\t\t\t\t\t\t<h4><i class=\"fa fa-table\"></i>随访计划</h4>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tools\">\r\n");
      out.write("\t\t\t\t\t\t\t<a id=\"addFollowupPlanBtn\" href=\"#box-config\" data-toggle=\"modal\" class=\"config\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-cog\">保存</i>\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div> \t\r\n");
      out.write("\t\t\t\t\t<!-- 查询框开始 -->\r\n");
      out.write("\t\t\t\t\t<div class=\"box-body\">\r\n");
      out.write("\t\t\t\t\t\t <form class=\"form-horizontal \" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-6\">\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t图例：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"background-color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 30px; height: 10px; background-color: red;\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 50px;\">上午</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 30px; height: 10px; background-color: green;\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 50px;\">下午</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 30px; height: 10px; background-color: blue;\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td style=\"width: 50px;\">晚上</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-6\" style=\"text-align: right;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\">打印</button>&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- 查询框结束 -->\t\t\r\n");
      out.write("\t\t\t\t\t<!-- 患者列表开始 -->\r\n");
      out.write("\t\t\t\t\t<div class=\"box-body\">\r\n");
      out.write("\t\t\t\t\t\t<table style=\"border: 1px blue solid; width: 100%;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"border: 0px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 0px blue solid;\">区域</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 0px blue solid;\">医生</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid; text-align: center;\" colSpan=\"7\">工作周</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"border: 0px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 0px blue solid;\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 0px blue solid;\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周一</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周二</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周三</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周四</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周五</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周六</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">周日</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"border: 0px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">于都A区1</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">赵明</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user1\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon1\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user2\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon2\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user3\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon3\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user4\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon4\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user5\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon5\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user6\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon6\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user7\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon7\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td8\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user8\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon8\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user9\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon9\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td10\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user10\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon10\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td11\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user11\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon11\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td12\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user12\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon12\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td13\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user13\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon13\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td14\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user14\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon14\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user15\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon15\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td16\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user16\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon16\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td17\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user17\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon17\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td18\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user18\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon18\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"border: 1px blue solid;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table style=\"width: 100%; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: red;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td19\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user19\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon19\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: green;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td20\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user20\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon20\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr style=\"background-color: blue;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td id=\"td21\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<span id=\"user21\">上班</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<i id=\"icon21\" class=\"fa fa-times\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- 列表结束 -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /BOX -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\t\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var g_debug = 1;\r\n");
      out.write("$(document).ready(function () {\r\n");
      out.write("\t$(\"#addFollowupPlanBtn\").bind(\"click\", addFollowupPlan);\r\n");
      out.write("\t$(\"#pp_1\").bind(\"click\", showFollowupPlanPatients);\r\n");
      out.write("\t$(\"#user1\").bind(\"click\", choosePatient);\r\n");
      out.write("\t$(\"#icon1\").bind(\"click\", cancelSchedule);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("function addFollowupPlan() {\r\n");
      out.write("\twindow.location.href = 'main?cmd=showSchedulePatientTemplate&stmId=15&ssmId=20';\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function showFollowupPlanPatients() {\r\n");
      out.write("\twindow.location.href = \"main?cmd=showFollowupPlanPatients&stmId=12&ssmId=13&stmId=12&ssmId=13\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function choosePatient() {\r\n");
      out.write("\t//window.location.href = \"main?cmd=showSchedulePatientChoosePatient&stmId=15&ssmId=16\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function cancelSchedule() {\r\n");
      out.write("\t$(\"#td1\").html(\"&nbsp;\");\r\n");
      out.write("\t$(\"#td1\").bind(\"click\", setSchedule);\r\n");
      out.write("\tg_debug = 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function setSchedule() {\r\n");
      out.write("\tif (0 == g_debug) {\r\n");
      out.write("\t\tg_debug = 1;\r\n");
      out.write("\t\treturn ;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar html = \"<span id=\\\"user1\\\">上班</span><i id=\\\"icon1\\\" class=\\\"fa fa-times\\\"></i>\";\r\n");
      out.write("\t$(\"#td1\").html(html);\r\n");
      out.write("\t$(\"#user1\").bind(\"click\", choosePatient);\r\n");
      out.write("\t$(\"#icon1\").bind(\"click\", cancelSchedule);\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("                    ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
