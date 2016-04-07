<%@page import="java.util.List"%>
<%@page import="com.haisijia.common.AppRegistry"%>
<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.model.AppModel"%>
<%@page import="com.haisijia.yhis.model.PatientModel"%>
<%@page import="com.haisijia.yhis.model.PatientVo"%>
<%
PatientModel patientModel = (PatientModel)request.getAttribute("model");
List<PatientVo> patients = patientModel.getPatients();
String recsPerPage = "5";
if (request.getParameter("recsPerPage")!=null && !request.getParameter("recsPerPage").equals("")) {
	recsPerPage = request.getParameter("recsPerPage");
}
String pageSeq = "1";
if (request.getParameter("pageSeq")!=null && !request.getParameter("pageSeq").equals("")) {
	pageSeq = request.getParameter("pageSeq");
}
String total = "" + patientModel.getPatientsTotal();
%>
<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>患者信息管理</h4>
						<div class="tools">
							<a id="addPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">添加</i>
							</a>
						</div>
					</div>    
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">姓名</label>
								<div class="col-md-4">
									<input class="form-control" type="text" name="patientName" size="10" id="patientName">
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
								<th>姓名</th>
								<th>住院号</th>
								<th>性别</th>
								<th>年龄</th>
								<th>出生地</th>
								<th>电话</th>
								<th>删除</th>
							  </tr>
							</thead>
							<tbody id="patientList">
								<%
								int seq = 1;
								if (patients != null) {
								%>
								<% for (PatientVo vo : patients) {%>
									<tr>
										<td><%=seq++%></td>
										<td><a href="main?v=0.0.1&p=pc&s=1&cmd=showPatientDetail&patientId=<%=vo.getPatientId()%>&stmId=1&ssmId=7&recsPerPage=<%=recsPerPage%>&pageSeq=<%=pageSeq%>"><%=vo.getPatientName()%></a></td>
										<td><%=vo.getResidentHospitalCode()%></td>
										<td><%=vo.getGenderId()%></td>
										<td><%=vo.getBirthday()%></td>
										<td>birth address<%=vo.getPatientId()%></td>
										<td>phone<%=vo.getPatientId()%></td>
										<td>
										<a id="p_<%=vo.getPatientId()%>" href="javascript:;" class="remove">
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
var g_realRecsNum = <%=patients.size()%>; // 每页实际的记录数
g_total = <%=patientModel.getPatientsTotal()%>;
$(document).ready(function () {
	$("#addPatientBtn").bind("click", addPatient);
    $("[id^=" + "p_" + "]").each(bindDeletePatientIconClick); // 对每个以p_开头的元素绑定单击事件
	bindPageNavBtns();
    prepagePageNavigation();
});

/**
* 显示添加患者页面
* 【闫涛 2016.03.09】初始版本
*/
function addPatient() {
	window.location.href = "main?v=0.0.1&p=pc&s=1&cmd=showPatientNew&stmId=1&ssmId=7&recsPerPage=" + g_recsPerPage + "&pageSeq=1";
}


/**
* 每行的删除图标，均为以p_开头的元素，本函数中绑定单击事件
* 【闫涛 2016.03.28】初始版本
*/
function bindDeletePatientIconClick(idx, elem) {
    var elemId = elem.id;
    var arrs = elemId.split("_");
    var bzId = parseInt(arrs[1]);
    $("#" + elemId).bind("click", onClickDeletePatientIcon);
}

/**
* 删除患者图标单击事件，先求出患者编号，然后询问用户是否删除，如果删除则调用
* Ajax进行删除操作
* 【闫涛 2015.03.28】初始版本
*/
function onClickDeletePatientIcon() {
    var arrs = this.id.split("_");
    var patientId = parseInt(arrs[1]);
    if (true == confirm("您确定要删除这个患者吗？")) {
        deletePatient(patientId);
    }
}
function deletePatient(patientId) {
    // 删除该记录
    var reqUrl = "ajax?v=0.0.1&p=pc&s=1&cmd=deletePatientAjax&patientId=" + patientId + "&stmId=1&ssmId=7&cm=基本信息"; // s=1代表系统编号
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

function searchPatient() {
    goSpecificPage(1);
}    
    
function goSpecificPage(pageSeq) {
    var patientName = $("#patientName").val();
    var reqUrl = "ajax?cmd=getSpecPatientsAjax&stmId=1&ssmId=7&cm=基本信息&recsPerPage=" + g_recsPerPage + "&pageSeq=" + pageSeq;    
	goSpecificPageBase(pageSeq, reqUrl, onGetSpecPatientsOk, onGetSpecPatientsError);
}
function onGetSpecPatientsOk(json) {
    $("#patientList").html("");
    g_recsPerPage = parseInt(json.recsPerPage);
    g_pageSeq = parseInt(json.pageSeq);
    g_total = parseInt(json.total);
    prepagePageNavigation();
    var patients = json.patients;
    var i = 0;
    var htmlStr = "";
    for (i=0; i<patients.length; i++) {
        htmlStr += "<tr>";
        htmlStr += "<td>" + ((g_pageSeq - 1) * g_recsPerPage + i + 1) + "</td>";
        htmlStr += "<td><a href=\"main?cmd=showPatientDetail&patientId=" + patients[i].patientId + "&stmId=1&ssmId=7&cm=基本信息&pageSeq=" + g_pageSeq + "\">" + patients[i].patientName + "</a></td>";
        htmlStr += "<td>" + patients[i].patientName + "</td>";
        htmlStr += "<td>" + patients[i].residentHospitalCode + "</td>";
        htmlStr += "<td>" + patients[i].genderId + "</td>";
        htmlStr += "<td>" + patients[i].birthday + "</td>";
        htmlStr += "<td>&nbsp;</td>";
        htmlStr += "<td><a id=\"p_" + patients[i].patientId + "\" href=\"javascript:;\" class=\"remove\"><i class=\"fa fa-times\"></i></a></td>";
        htmlStr += "</tr>";
    }
    $("#patientList").html(htmlStr);
    $("[id^=" + "p_" + "]").each(bindDeletePatientIconClick); // 对每个以p_开头的元素绑定单击事件
}
function onGetSpecPatientsError(msg) {
    alert("获取患者信息失败：" + msg.responseText + "!");
}

</script>
                    