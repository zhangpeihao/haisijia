/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M3
 * Generated at: 2016-04-08 05:16:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.followup;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class followup_005fplan_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\t\t\t\t<h4>\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-table\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"main?cmd=showFollowupPlans&stmId=12&ssmId=13&stmId=12&ssmId=13\" style=\"color: white;\">随访计划</a> >>\r\n");
      out.write("\t\t\t\t\t\t\t患者列表\r\n");
      out.write("\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"tools\">\r\n");
      out.write("\t\t\t\t\t\t\t<a id=\"addFollowupPatientBtn\" href=\"#box-config\" data-toggle=\"modal\" class=\"config\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-cog\">确定</i>\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div> \t\r\n");
      out.write("\t\t\t\t\t<!-- 查询框开始 -->\r\n");
      out.write("\t\t\t\t\t<div class=\"box-body\">\r\n");
      out.write("\t\t\t\t\t\t <form class=\"form-horizontal \" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label class=\"col-md-2 control-label\">姓名</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"jcName\" size=\"10\" id=\"jcName\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<label class=\"col-md-2 control-label\">&nbsp;</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\">查询</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- 查询框结束 -->\r\n");
      out.write("\t\t\t\t\t<!-- 患者列表开始 -->\r\n");
      out.write("\t\t\t\t\t<div class=\"box-body\">\r\n");
      out.write("\t\t\t\t\t\t<table class=\"table table-bordered table-striped\">\r\n");
      out.write("\t\t\t\t\t\t\t<thead>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>#</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>姓名</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>性别</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>年龄</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>教育程度</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>职业</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>收入</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>手机</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>间隔</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>状态</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>上次随访</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>上次结果</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>标签</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>1</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"main?cmd=showFollowupPatientDetail&stmId=12&ssmId=13\">赵一</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>当天</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"main?cmd=showAddFollowupPatientResult&stmId=12&ssmId=13\">未进行</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>2016-04-03</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>感兴趣</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"p_1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div id=\"p_tag_1\" class=\"popover fade left in\" style=\"top: 120px; left: 830px; display: none;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"arrow\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<h3 class=\"popover-title\">赵一的标签</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"popover-content\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">老年</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">低收入</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">体力劳动</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">IgA肾病</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">CKD四期</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">腹膜透析</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-xs btn-primary\">血管通路</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>2</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">钱二</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>一周</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>已完成</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>2016-04-03</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>不感兴趣</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>3</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">孙三</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>两周</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>已完成</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>2014-04-03</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>极度反感</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>4</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">李四</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>一月</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>已完成</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>2014-04-03</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>已选竞争对手</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">周五</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>每月</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>未进行</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>6</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">武六</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>一周</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>未进行</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>7</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">郑七</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>每月</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>未进行</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"jc1\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>8</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href=\"#\">王八</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>男</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>55</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>小学</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>司机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>5000~10000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>13912340000</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>两周</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>未进行</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a id=\"p_8\" href=\"javascript:;\" class=\"remove\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-info-circle\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<table style=\"width: 100%; text-align: right;\">\r\n");
      out.write("\t\t\t\t\t<tr><td>\r\n");
      out.write("\t\t\t\t\t<ul class=\"pagination\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">共*条记录，共*页第*页</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">««</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">«</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">1</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">2</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">3</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"active\"><a href=\"#\">4</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">5</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">»</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">»»</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- 患者列表结束 -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /BOX -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\t\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function () {\r\n");
      out.write("\t$(\"#p_1\").bind(\"mouseover\", showTags);\r\n");
      out.write("\t$(\"#p_1\").bind(\"mouseout\", hideTags);\r\n");
      out.write("\t$(\"#pd_1\").bind(\"click\", deletePatient);\r\n");
      out.write("\t$(\"#rd_1\").bind(\"click\", enrollPatient);\r\n");
      out.write("\t$(\"#addFollowupPatientBtn\").bind(\"click\", showAddFollowupPatient);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("function showTags() {\r\n");
      out.write("\t$(\"#p_tag_1\").css(\"display\", \"block\");\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function hideTags() {\r\n");
      out.write("\t$(\"#p_tag_1\").css(\"display\", \"none\");\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function deletePatient() {\r\n");
      out.write("\tconfirm(\"您确定要删除这个患者吗？\");\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function showAddFollowupPatient() {\r\n");
      out.write("\twindow.location.href = \"main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function enrollPatient() {\r\n");
      out.write("\twindow.location.href = \"main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1\";\r\n");
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
