<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.haisijia.common.AppRegistry"%>
<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.model.AppModel"%>
<%
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
%>
<script type="text/javascript">
// ****************************************************************************
// ************* 页面导航相关函数实现 *****************************************
// ****************************************************************************
// 全局变量定义
var g_recsPerPage = <%=recsPerPage%>;
var g_pageSeq = <%=pageSeq%>;
var g_total = 0;
var g_pageCount = 1;
</script>



<c:import url="<%=header%>"></c:import>
	<!-- PAGE -->
	<section id="page">
		<c:import url="<%=sidebar%>"></c:import>
		<c:import url="<%=body%>"></c:import>
	</section>
	<!--/PAGE -->

<c:import url="<%=footer%>"></c:import>

<!-- DATE RANGE PICKER -->
<script src="js/bootstrap-daterangepicker/moment.min.js"></script>
<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js">
</script><script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<!-- BOOTSTRAP SWITCH -->
<script type="text/javascript" src="js/bootstrap-switch/bootstrap-switch.min.js"></script>
<!-- BOOTBOX -->
<script type="text/javascript" src="js/bootbox/bootbox.min.js"></script>
<!-- HUBSPOT MESSENGER -->
<script type="text/javascript" src="js/hubspot-messenger/js/messenger.min.js"></script>
<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-flat.js"></script>
<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-future.js"></script>
<!-- MAGIC SUGGEST -->
<script type="text/javascript" src="js/magic-suggest/magicsuggest-1.3.1-min.js"></script>
<!-- TIMEAGO -->
<script type="text/javascript" src="js/timeago/jquery.timeago.min.js"></script>
<!-- DATE PICKER -->
<script type="text/javascript" src="js/datepicker/picker.js"></script>
<script type="text/javascript" src="js/datepicker/picker.date.js"></script>
<script type="text/javascript" src="js/datepicker/picker.time.js"></script>
<!-- COLOR PICKER -->
<script type="text/javascript" src="js/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- RATY -->
<script type="text/javascript" src="js/jquery-raty/jquery.raty.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="js/script.js"></script>
<script type="text/javascript" src="js/app_common.js"></script>