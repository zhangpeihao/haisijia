<%@page import="java.util.List"%>
<%@page import="com.haisijia.common.AppRegistry"%>
<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.model.AppModel"%>
<%@page import="com.haisijia.yhis.model.PatientModel"%>
<%@page import="com.haisijia.yhis.model.PatientVo"%>
<%
PatientModel patientModel = (PatientModel)request.getAttribute("model");
PatientVo patient = patientModel.getPatientVo();
long patientId = 0;
String residentHospitalCode = "";
int medicalInsuranceTypeId = -1;
long accountId = -1;
String patientName = "";
int genderId = -1;
String birthday = "";
if (patient != null) {
	patientId = patient.getPatientId();
	residentHospitalCode = patient.getResidentHospitalCode();
	medicalInsuranceTypeId = patient.getMedicalInsuranceTypeId();
	accountId = patient.getAccountId();
	patientName = patient.getPatientName();
	genderId = patient.getGenderId();
	birthday = patient.getBirthday().substring(0, 10);
}
String recsPerPage = "5";
if (request.getParameter("recsPerPage")!=null && !request.getParameter("recsPerPage").equals("")) {
	recsPerPage = request.getParameter("recsPerPage");
}
String pageSeq = "1";
if (request.getParameter("pageSeq")!=null && !request.getParameter("pageSeq").equals("")) {
	pageSeq = request.getParameter("pageSeq");
}
%>
<input type="hidden" id="patientId" value="<%=patientId%>" />
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
                    <div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>
                                            <a href="" style="color: white;">患者信息</a>»
                                            <a href="" style="color: white;">患者信息添加</a>
                                        </h4>
									</div>
									<div class="box-body">
										 <form class="form-horizontal " action="#">
											<div class="form-group">
												<label class="col-md-2 control-label">住院号</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="residentHospitalCode" value="<%=residentHospitalCode%>">
												</div>
												<label class="col-md-2 control-label">医保类型</label>
												<div class="col-md-4">
													<select id="medicalInsuranceTypeId" class="form-control">
													</select>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">账号</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="accountId" size="10" id="accountId" value="<%=accountId%>" />
												</div>
												<label class="col-md-2 control-label">姓名</label>
												<div class="col-md-4">
													<input type="text" name="patientName" id="patientName" class="form-control" value="<%=patientName%>" />
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">性别</label>
												<div class="col-md-4">
													<select id="genderId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">出生日期</label>
												<div class="col-md-4">
													<input  class="form-control datepicker" type="text" name="birthday" id="birthday" size="10" value="<%=birthday%>">
												</div>
											</div>		
											<div class="form-group">
												<label class="col-md-2 control-label">婚姻状况</label>
												<div class="col-md-4">
													<select id="marriageStateId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">国籍?</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" />
												</div>
											</div>		
											<div class="form-group">
												<label class="col-md-2 control-label">民族?</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="jcName">
												</div>
												<label class="col-md-2 control-label">出生地?</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" />
												</div>
											</div>		
											<div class="form-group">
												<label class="col-md-2 control-label">证件类型?</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="jcName">
												</div>
												<label class="col-md-2 control-label">证件编码?</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" />
												</div>
											</div>			
											<div class="form-group">
												<label class="col-md-2 control-label">通信地址?</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="jcName">
												</div>
												<label class="col-md-2 control-label">邮政编码?</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" />
												</div>
											</div>			
											<div class="form-group">
												<label class="col-md-2 control-label">患者标识?</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="jcName">
												</div>
												<label class="col-md-2 control-label">初次建档地点?</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" />
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">内容?</label>
												<div class="col-md-10">
													<textarea class="form-control" rows="5"></textarea>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													<button id="updateBtn" type="button" class="btn btn-primary">更新</button>
                                                    <button id="cancelBtn" type="button" class="btn btn-primary">取消</button>
												</div>
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">&nbsp;
												</div>
											</div>	
										</form>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
						<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>

<script type="text/javascript">
$(document).ready(function () {
    // 从数据库中读出参数单位列表并显示到下拉框中
	// 医保
    getHtmlSelectDataBySql(fillMedicalInsuranceTypeIdList, 
			"select medical_insurance_type_id as keyStr, " + 
			"medical_insurance_type_name as valStr from t_medical_insurance_type");
	// 性别
	getHtmlSelectDataBySql(fillGenderList, "select gender_id as keyStr, gender_name as valStr from t_gender");
	// 婚姻状况
	getHtmlSelectDataBySql(fillMarriageStateList, "select marriage_state_id as keyStr, marriage_state_name as valStr from t_marriage_state");
    $("#updateBtn").bind("click", updatePatient);
	$("#cancelBtn").bind("click", onCancel);
});

/**
* 将内容显示到医保类型下拉列表框中
* 【闫涛 2016.01.15】初始版本
*/
function fillMedicalInsuranceTypeIdList(json) {
    setupHtmlSelect("medicalInsuranceTypeId", json.recs, <%=medicalInsuranceTypeId%>, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 将性别填写到性别下拉列表框中
* 【闫涛 2016.03.12】初始版本
*/
function fillGenderList(json) {
	setupHtmlSelect("genderId", json.recs, <%=genderId%>, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 将婚姻状态添加到婚姻状态下拉列表框中
* 【闫涛 2016.03.12】初始版本
*/
function fillMarriageStateList(json) {
	setupHtmlSelect("marriageStateId", json.recs, -1, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 更新患者信息
* 【闫涛 2016.03.28】初始版本
*/
function updatePatient() {
	var reqUrl = "ajax?cmd=updatePatientAjax&p=pc&v=0.0.1&s=1";
	// 取出所有页面元素
	var patientId = $("#patientId").val();
	var residentHospitalCode = $("#residentHospitalCode").val();
	var medicalInsuranceTypeId = $("#medicalInsuranceTypeId").val();
	var accountId = $("#accountId").val();
	var patientName = $("#patientName").val();
	var genderId = $("#genderId").val();
	var birthday = $("#birthday").val();
	var marriageStateId = $("#marriageStateId").val();
	// 生成请求对象
	var data = new Object();
	data.patientId = patientId;
	data.residentHospitalCode = residentHospitalCode;
	data.medicalInsuranceTypeId = medicalInsuranceTypeId;
	data.accountId = accountId;
	data.patientName = patientName;
	data.genderId = genderId;
	data.birthday = birthday;
	data.marriageStateId = marriageStateId;
    $.ajax({
        url: reqUrl,
        type: 'POST',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
            jsonReq: JSON.stringify(data)
        },
        dataType: 'json',
        success: onUpdatePatientOk,
        error: onUpdatePatientError
    });
}
function onUpdatePatientOk(json) {
	if ("Ok" != json.status) {
		alert("更新患者信息失败！");
		return ;
	}	
	alert("更新患者信息成功！");
	window.location.href = "main?v=0.0.1&p=pc&s=1&cmd=showPatientList&stmId=1&ssmId=7&recsPerPage=<%=recsPerPage%>&pageSeq=<%=pageSeq%>";
}
function onUpdatePatientError(msg) {
	alert("更新患者失败：" + msg.responseText + "！");
}

/**
* 返回患者列表界面
* 【闫涛 2016.03.11】初始版本
*/
function onCancel() {
	window.location.href = "main?v=0.0.1&p=pc&s=1&cmd=showPatientList&stmId=1&ssmId=7&recsPerPage=<%=recsPerPage%>&pageSeq=<%=pageSeq%>";
}
</script>