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
                                            <a href="" style="color: white;">医嘱模板维护</a>»
                                            <a href="" style="color: white;">添加医嘱模板</a>
                                        </h4>
									</div>
									<div class="box-body">
										 <form class="form-horizontal " action="#">
											<div class="form-group">
												<label class="col-md-2 control-label">名称*</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="residentHospitalCode" value="老年男性模板" />
												</div>
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													&nbsp;
												</div>
											</div>											
											<div class="form-group">
												<label class="col-md-2 control-label">模板描述</label>
												<div class="col-md-10">
													<textarea class="form-control" rows="5">适合于老年男性患者，其中GFR小于30</textarea>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													<button id="addBtn" type="button" class="btn btn-primary">添加</button>
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
	// 性别
	getHtmlSelectDataBySql(fillGenderList, "select gender_id as keyStr, gender_name as valStr from t_gender");
	// 教育程度
	getHtmlSelectDataBySql(fillEducationLevels, "select education_level_id as keyStr, education_level_name as valStr from t_education_level");
	// 国籍
	getHtmlSelectDataBySql(fillNationalitys, "select nationality_id as keyStr, nationality_name as valStr from t_nationality");
	// 民族
	getHtmlSelectDataBySql(fillEthnics, "select ethnic_id as keyStr, ethnic_name as valStr from t_ethnic");
	// 婚姻状况
	getHtmlSelectDataBySql(fillMarriageStateList, "select marriage_state_id as keyStr, marriage_state_name as valStr from t_marriage_state");
	// 收入水平
	getHtmlSelectDataBySql(fillIncomeLevels, "select income_level_id as keyStr, income_level_name as valStr from t_income_level");
	// 职业
	getHtmlSelectDataBySql(fillOccupations, "select occupation_id as keyStr, occupation_name as valStr from t_occupation");
	// 身份证类型
	getHtmlSelectDataBySql(fillIdCardTypes, "select id_card_type_id as keyStr, id_card_type_name as valStr from t_id_card_type");
	
	
	// 医保
    getHtmlSelectDataBySql(fillMedicalInsuranceTypeIdList, 
			"select medical_insurance_type_id as keyStr, " + 
			"medical_insurance_type_name as valStr from t_medical_insurance_type");
    $("#addBtn").bind("click", addPatient);
	$("#cancelBtn").bind("click", onCancel);
	$("#addTagBtn").bind("click", addTag);
	$("#choosePatientsBtn").bind("click", choosePatients);
});

/**
* 将内容显示到医保类型下拉列表框中
* 【闫涛 2016.01.15】初始版本
*/
function fillMedicalInsuranceTypeIdList(json) {
    setupHtmlSelect("medicalInsuranceTypeId", json.recs, -1, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 将性别填写到性别下拉列表框中
* 【闫涛 2016.03.12】初始版本
*/
function fillGenderList(json) {
	setupHtmlSelect("genderId", json.recs, -1, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillEducationLevels(json) {
	setupHtmlSelect("educationLevelId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillNationalitys(json) {
	setupHtmlSelect("nationalityId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillEthnics(json) {
	setupHtmlSelect("ethnicId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillIncomeLevels(json) {
	setupHtmlSelect("incomeLevelId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillOccupations(json) {
	setupHtmlSelect("occupationId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillIdCardTypes(json) {
	setupHtmlSelect("idCardTypeId", json.recs, -1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 将婚姻状态添加到婚姻状态下拉列表框中
* 【闫涛 2016.03.12】初始版本
*/
function fillMarriageStateList(json) {
	setupHtmlSelect("marriageStateId", json.recs, -1, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 添加新患者
* 【闫涛 2016.03.11】初始版本
*/
function addPatient() {
	window.location.href = "main?cmd=showDoctorAdviceTemplateDetailNew&stmId=25&ssmId=27";
}
function onAddPatientOk(json) {
	if ("Ok" != json.status) {
		alert("添加患者信息失败！");
		return ;
	}	
	alert("添加患者信息成功！");
	window.location.href = "main?cmd=showPatientList";
}
function onAddPatientError(msg) {
	alert("添加患者失败：" + msg.responseText + "！");
}

/**
* 返回患者列表界面
* 【闫涛 2016.03.11】初始版本
*/
function onCancel() {
	window.location.href = "main?cmd=showFollowupPatients&stmId=1&ssmId=55&stmId=1";
}

function addTag() {
	var html = $("#tagsDiv").html();
	html += "<button class=\"btn btn-xs btn-primary\">" + $("#tagTxt").val() + "</button>"
	$("#tagsDiv").html(html);
	$("#tagTxt").val("");
}

function choosePatients() {
	window.location.href = "main?cmd=showFollowupPlanChoosePatients&stmId=12&ssmId=13";
}
</script>