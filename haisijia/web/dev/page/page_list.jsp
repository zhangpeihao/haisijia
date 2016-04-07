<%@page import="java.util.List"%>
<%@page import="com.haisijia.common.AppRegistry"%>
<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.model.AppModel"%>
<%@page import="com.haisijia.model.dev.DevPageModel"%>
<%@page import="com.haisijia.model.dev.DevPageVo"%>
<%
DevPageModel devPageModel = (DevPageModel)request.getAttribute("model");
List<DevPageVo> devPages = devPageModel.getDevPages();
String recsPerPage = "5";
if (request.getParameter("recsPerPage")!=null && !request.getParameter("recsPerPage").equals("")) {
	recsPerPage = request.getParameter("recsPerPage");
}
String pageSeq = "1";
if (request.getParameter("pageSeq")!=null && !request.getParameter("pageSeq").equals("")) {
	pageSeq = request.getParameter("pageSeq");
}
String total = "" + devPageModel.getDevPagesTotal();
%>
<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>页面管理</h4>
						<div class="tools">
							<a id="addPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">添加</i>
							</a>
						</div>
					</div>     
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">URL</label>
								<div class="col-md-4">
									<input class="form-control" type="text" name="jcName" size="10" id="jcName">
								</div>
								<label class="col-md-2 control-label">&nbsp;</label>
								<div class="col-md-4">
									<button type="button" class="btn btn-primary">查询</button>
								</div>
							</div>																							
						</form>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped">
							<thead>
							  <tr>
								<th>#</th>
								<th>URL</th>
								<th>类名</th>
								<th>方法名</th>
								<th>标题</th>
								<th>页头</th>
								<th>左侧</th>
								<th>主体</th>
								<th>页脚</th>
								<th>删除</th>
							  </tr>
							</thead>
							<tbody id="devPageList">
								<%
								int seq = 1;
								if (devPages != null) {
								%>
								<% for (DevPageVo vo : devPages) {%>
									<tr>
										<td><%=seq++%></td>
										<td><a href="main?v=0.0.1&p=pc&s=1&cmd=showDevPageDetail&cmdId=<%=vo.getCmdId()%>&stmId=1&ssmId=7&recsPerPage=<%=recsPerPage%>&pageSeq=<%=pageSeq%>"><%=vo.getCmdName()%></a></td>
										<td><%=vo.getClassName()%></td>
										<td><%=vo.getMethodName()%></td>
										<td><%=vo.getTitle()%></td>
										<td><%=vo.getHeader()%></td>
										<td><%=vo.getSidebar()%></td>
										<td><%=vo.getBody()%></td>
										<td><%=vo.getFooter()%></td>
										<td>
										<a id="dp_<%=vo.getCmdId()%>" href="javascript:;" class="remove">
										<i class="fa fa-times"></i>
										</a>
										</td>
									</tr>
								<% }} %>
							</tbody>
						  </table>
						  <!-- 页面导航开始 -->
							<table style="width: 100%; text-align: right;">
								<tr><td>
									<ul class="pagination">
										<li><a href="#">共<span id="totalRecs"><%=total%></span>条记录，共<span id="pageCount"></span>页第<span id="pageSeq"></span>页</a></li>
										<li><a id="firstPage" href="#">««</a></li>
										<li><a id="prevPage" href="#">«</a></li>
										<li><a href="#"><span id="currPage"></span></a></li>
										<li><a id="nextPage" href="#">»</a></li>
										<li><a id="lastPage" href="#">»»</a></li>
										<li>
											<a id="goDestPage" href="#">前往</a>&nbsp;<input type="text" style="height: 30px; width: 50px;" id="destPage" value="" />
										</li>
									</ul>
								</td></tr>
							</table> 
							<!-- 页面导航结束 -->
					</div>
				</div>
				<!-- /BOX -->
			</div>
		</div>			
	</div>
</div>
<script type="text/javascript">
var g_realRecsNum = <%=devPages.size()%>; // 每页实际的记录数
g_total = <%=devPageModel.getDevPagesTotal()%>;
$(document).ready(function () {
	$("#addPatientBtn").bind("click", addPatient);
    $("[id^=" + "dp_" + "]").each(bindDeleteDevPageIconClick); // 对每个以dp_开头的元素绑定单击事件
	bindPageNavBtns();
    prepagePageNavigation();
});


/**
* 每行的删除图标，均为以p_开头的元素，本函数中绑定单击事件
* 【闫涛 2016.03.28】初始版本
*/
function bindDeleteDevPageIconClick(idx, elem) {
    var elemId = elem.id;
    var arrs = elemId.split("_");
    var bzId = parseInt(arrs[1]);
    $("#" + elemId).bind("click", onClickDeleteDevPageIcon);
}

/**
* 删除患者图标单击事件，先求出患者编号，然后询问用户是否删除，如果删除则调用
* Ajax进行删除操作
* 【闫涛 2015.03.28】初始版本
*/
function onClickDeleteDevPageIcon() {
    var arrs = this.id.split("_");
    var cmdId = parseInt(arrs[1]);
    if (true == confirm("您确定要删除这个页面吗？")) {
        //deleteDevPage(cmdId);
    }
}
function deleteDevPage(cmdId) {
    // 删除该记录
    var reqUrl = "ajax?v=0.0.1&p=pc&s=1&cmd=deleteDevPageAjax&cmdId=" + cmdId + "&stmId=1&ssmId=7&cm=基本信息"; // s=1代表系统编号
    $.ajax({
        url: reqUrl,
        type: 'GET',
        /*data: {
            jsonReq: JSON.stringify(g_pqov_json)
        },*/
        dataType: 'json',
        success: onDeletePatientOk,
        error: onDeletePatientError
    });
}
function onDeletePatientOk(json) {
    // 重新显示页面
    var pageSeq = g_pageSeq;
    if (1 == g_realRecsNum) {
        pageSeq--;
    }
    window.location.href = "main?cmd=showPatientList&stmId=1&ssmId=7&recsPerPage=" + g_recsPerPage + "&pageSeq=" + pageSeq;
}
function onDeletePatientError(msg) {
    alert("删除患者信息失败：" + msg.responseText + "!");
}


function searchDevPage() {
    goSpecificPage(1);
}    
    
function goSpecificPage(pageSeq) {
    var reqUrl = "ajax?cmd=getSpecDevPagesAjax&stmId=1&ssmId=7&cm=基本信息&recsPerPage=" + g_recsPerPage + "&pageSeq=" + pageSeq;    
	goSpecificPageBase(pageSeq, reqUrl, onGetSpecDevPagesOk, onGetSpecDevPagesError);
}
function onGetSpecDevPagesOk(json) {
    $("#devPageList").html("");
    g_recsPerPage = parseInt(json.recsPerPage);
    g_pageSeq = parseInt(json.pageSeq);
    g_total = parseInt(json.total);
    prepagePageNavigation();
    var devPages = json.devPages;
    var i = 0;
    var htmlStr = "";
    for (i=0; i<devPages.length; i++) {
        htmlStr += "<tr>";
        htmlStr += "<td>" + ((g_pageSeq - 1) * g_recsPerPage + i + 1) + "</td>";
        htmlStr += "<td><a href=\"main?cmd=showDevPageDetail&cmdId=" + devPages[i].cmdId + "&stmId=1&ssmId=7&cm=基本信息&pageSeq=" + g_pageSeq + "\">" + devPages[i].cmdName + "</a></td>";
        htmlStr += "<td>" + devPages[i].className + "</td>";
        htmlStr += "<td>" + devPages[i].methodName + "</td>";
        htmlStr += "<td>" + devPages[i].title + "</td>";
        htmlStr += "<td>" + devPages[i].header + "</td>";
        htmlStr += "<td>" + devPages[i].sidebar + "</td>";
        htmlStr += "<td>" + devPages[i].body + "</td>";
        htmlStr += "<td>" + devPages[i].footer + "</td>";
        htmlStr += "<td><a id=\"dp_" + devPages[i].cmdId + "\" href=\"javascript:;\" class=\"remove\"><i class=\"fa fa-times\"></i></a></td>";
        htmlStr += "</tr>";
    }
    $("#devPageList").html(htmlStr);
    $("[id^=" + "dp_" + "]").each(bindDeleteDevPageIconClick); // 对每个以p_开头的元素绑定单击事件
}
function onGetSpecDevPagesError(msg) {
    alert("获取患者信息失败：" + msg.responseText + "!");
}

/**
* 显示添加患者页面
* 【闫涛 2016.03.18】初始版本
*/
function addPatient() {
	window.location.href = "main?cmd=showDevPageNew";
}
</script>
                    