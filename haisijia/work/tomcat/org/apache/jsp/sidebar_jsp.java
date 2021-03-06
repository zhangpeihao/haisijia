/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M3
 * Generated at: 2016-04-08 03:41:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.haisijia.common.AppRegistry;
import com.haisijia.model.JspParamsVo;
import com.haisijia.model.AppModel;
import com.haisijia.model.MenuVo;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.haisijia.model.AppModel");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.haisijia.model.JspParamsVo");
    _jspx_imports_classes.add("com.haisijia.model.MenuVo");
    _jspx_imports_classes.add("com.haisijia.common.AppRegistry");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

AppModel appModel = (AppModel)request.getAttribute("model");
JspParamsVo jspParamsVo = appModel.getJspParamsVo();
String title = jspParamsVo.getParamValue("title").orElse("");

      out.write("\r\n");
      out.write("\t\t\t\t<!-- SIDEBAR -->\r\n");
      out.write("\t\t\t\t<div id=\"sidebar\" class=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<div class=\"sidebar-menu nav-collapse\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"divide-20\"></div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<!-- SIDEBAR MENU -->\r\n");
      out.write("\t\t\t\t\t\t<ul id=\"funcBar\">\r\n");
      out.write("                            <!-- 当前选中的菜单信息 -->\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown-title\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span style=\"font-size: 30px;\">功能导航</span>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("                            <div class=\"divide-10\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t");

							List<MenuVo> sidebarMenus = appModel.getSidebarMenus();
							String selectedMenuCss = "";
							int selectedTopMenuId = appModel.getSelectedTopMenuId();
							for (MenuVo menu : sidebarMenus) {
								if (menu.getMenuId() == appModel.getSelectedSidebarMenuId()) {
									selectedMenuCss = " class=\"active\" ";
								} else {
									selectedMenuCss = "";
								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<li ");
      out.print(selectedMenuCss);
      out.write(" >\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(menu.getMenuUrl());
      out.write("&stmId=");
      out.print(selectedTopMenuId);
      out.write("&ssmId=");
      out.print(menu.getMenuId());
      out.write("\"><i class=\"fa fa-tachometer fa-fw\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span id=\"ngSequence\" class=\"menu-text\">");
      out.print(menu.getMenuName());
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"selected\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t");
 } 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t<!-- /SIDEBAR MENU -->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /SIDEBAR -->\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("       ");
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
