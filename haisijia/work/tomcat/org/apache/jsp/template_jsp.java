/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M3
 * Generated at: 2016-04-08 03:41:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.haisijia.common.AppRegistry;
import com.haisijia.model.JspParamsVo;
import com.haisijia.model.AppModel;

public final class template_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1457663918184L));
    _jspx_dependants.put("jar:file:/D:/abiz/projects/java/haisijia/web/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425949870000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.haisijia.model.AppModel");
    _jspx_imports_classes.add("com.haisijia.model.JspParamsVo");
    _jspx_imports_classes.add("com.haisijia.common.AppRegistry");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.release();
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

AppModel appModel = (AppModel)request.getAttribute("model");
JspParamsVo jspParamsVo = appModel.getJspParamsVo();
String header = jspParamsVo.getParamValue("header").orElse("header.jsp");
String sidebar = jspParamsVo.getParamValue("sidebar").orElse("sidebar.jsp");
String body = jspParamsVo.getParamValue("body").orElse("t1.jsp");
String footer = jspParamsVo.getParamValue("footer").orElse("footer.jsp");
int recsPerPage = 5;
if (request.getParameter("recsPerPage") != null && !request.getParameter("recsPerPage").equals("")) {
	recsPerPage = Integer.parseInt(request.getParameter("recsPerPage"));
}
int pageSeq = 1;
if (request.getParameter("pageSeq") != null && !request.getParameter("pageSeq").equals("")) {
	pageSeq = Integer.parseInt(request.getParameter("pageSeq"));
}

      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("// ****************************************************************************\r\n");
      out.write("// ************* 页面导航相关函数实现 *****************************************\r\n");
      out.write("// ****************************************************************************\r\n");
      out.write("// 全局变量定义\r\n");
      out.write("var g_recsPerPage = ");
      out.print(recsPerPage);
      out.write(";\r\n");
      out.write("var g_pageSeq = ");
      out.print(pageSeq);
      out.write(";\r\n");
      out.write("var g_total = 0;\r\n");
      out.write("var g_pageCount = 1;\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      //  c:import
      org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
      _jspx_th_c_005fimport_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f0.setParent(null);
      // /template.jsp(34,0) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f0.setUrl(header);
      int[] _jspx_push_body_count_c_005fimport_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f0 = _jspx_th_c_005fimport_005f0.doStartTag();
        if (_jspx_th_c_005fimport_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f0.doFinally();
        _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f0);
      }
      out.write("\r\n");
      out.write("\t<!-- PAGE -->\r\n");
      out.write("\t<section id=\"page\">\r\n");
      out.write("\t\t");
      //  c:import
      org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f1 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
      _jspx_th_c_005fimport_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f1.setParent(null);
      // /template.jsp(37,2) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f1.setUrl(sidebar);
      int[] _jspx_push_body_count_c_005fimport_005f1 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f1 = _jspx_th_c_005fimport_005f1.doStartTag();
        if (_jspx_th_c_005fimport_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f1.doFinally();
        _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f1);
      }
      out.write("\r\n");
      out.write("\t\t");
      //  c:import
      org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f2 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
      _jspx_th_c_005fimport_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f2.setParent(null);
      // /template.jsp(38,2) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f2.setUrl(body);
      int[] _jspx_push_body_count_c_005fimport_005f2 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f2 = _jspx_th_c_005fimport_005f2.doStartTag();
        if (_jspx_th_c_005fimport_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f2[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f2.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f2.doFinally();
        _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f2);
      }
      out.write("\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<!--/PAGE -->\r\n");
      out.write("\r\n");
      //  c:import
      org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f3 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
      _jspx_th_c_005fimport_005f3.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f3.setParent(null);
      // /template.jsp(42,0) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f3.setUrl(footer);
      int[] _jspx_push_body_count_c_005fimport_005f3 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f3 = _jspx_th_c_005fimport_005f3.doStartTag();
        if (_jspx_th_c_005fimport_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f3[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f3.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f3.doFinally();
        _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f3);
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- DATE RANGE PICKER -->\r\n");
      out.write("<script src=\"js/bootstrap-daterangepicker/moment.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap-daterangepicker/daterangepicker.min.js\"></script>\r\n");
      out.write("<!-- SLIMSCROLL -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js\">\r\n");
      out.write("</script><script type=\"text/javascript\" src=\"js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js\"></script>\r\n");
      out.write("<!-- BLOCK UI -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jQuery-BlockUI/jquery.blockUI.min.js\"></script>\r\n");
      out.write("<!-- BOOTSTRAP SWITCH -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootstrap-switch/bootstrap-switch.min.js\"></script>\r\n");
      out.write("<!-- BOOTBOX -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootbox/bootbox.min.js\"></script>\r\n");
      out.write("<!-- HUBSPOT MESSENGER -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/hubspot-messenger/js/messenger.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/hubspot-messenger/js/messenger-theme-flat.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/hubspot-messenger/js/messenger-theme-future.js\"></script>\r\n");
      out.write("<!-- MAGIC SUGGEST -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/magic-suggest/magicsuggest-1.3.1-min.js\"></script>\r\n");
      out.write("<!-- TIMEAGO -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/timeago/jquery.timeago.min.js\"></script>\r\n");
      out.write("<!-- DATE PICKER -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/datepicker/picker.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/datepicker/picker.date.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/datepicker/picker.time.js\"></script>\r\n");
      out.write("<!-- COLOR PICKER -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/colorpicker/js/bootstrap-colorpicker.min.js\"></script>\r\n");
      out.write("<!-- RATY -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-raty/jquery.raty.min.js\"></script>\r\n");
      out.write("<!-- COOKIE -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jQuery-Cookie/jquery.cookie.min.js\"></script>\r\n");
      out.write("<!-- CUSTOM SCRIPT -->\r\n");
      out.write("<script src=\"js/script.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/app_common.js\"></script>");
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
