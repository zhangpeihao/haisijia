﻿		<div id="main-content">
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
                                            <a href="" style="color: white;">患者信息更新</a>
                                        </h4>
									</div>
									<div class="box-body">
										 <form class="form-horizontal " action="#">
											<div class="form-group">
												<label class="col-md-2 control-label">姓名*</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="residentHospitalCode" size="10" id="residentHospitalCode" value="赵一" />
												</div>
												<label class="col-md-2 control-label">性别*</label>
												<div class="col-md-4">
													<select id="genderId" class="form-control">
													</select>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">出生日期*</label>
												<div class="col-md-4">
													<input  class="form-control datepicker" type="text" name="birthday" id="birthday" size="10" value="1970-01-01">
												</div>
												<label class="col-md-2 control-label">教育程度</label>
												<div class="col-md-4">
													<select id="educationLevelId" class="form-control">
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">国籍</label>
												<div class="col-md-4">
													<select id="nationalityId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">民族</label>
												<div class="col-md-4">
													<select id="ethnicId" class="form-control">
													</select>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">婚姻状况</label>
												<div class="col-md-4">
													<select id="marriageStateId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">收入水平</label>
												<div class="col-md-4">
													<select id="incomeLevelId" class="form-control">
													</select>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">职业</label>
												<div class="col-md-4">
													<select id="occupationId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">出生地</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="北京市" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">证件类型</label>
												<div class="col-md-4">
													<select id="idCardTypeId" class="form-control">
													</select>
												</div>
												<label class="col-md-2 control-label">证件编码</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="110106197001011222" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">手机号码*</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="13912340000" />
												</div>
												<label class="col-md-2 control-label">电子邮件</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="zhoy@abc.com" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">QQ号码</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="132443423" />
												</div>
												<label class="col-md-2 control-label">微信号码</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="wx001" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">家庭住址</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="海淀区王庄路1号清华科技园A座801" />
												</div>
												<label class="col-md-2 control-label">邮编</label>
												<div class="col-md-4">
													<input type="text" name="regular" class="form-control" value="100080" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">编辑标签</label>
												<div class="col-md-4">
													<input id="tagTxt" type="text" name="regular" class="form-control" />
													<button id="addTagBtn" type="button" class="btn btn-primary">添加</button>
													<button id="chooseTagBtn" type="button" class="btn btn-primary">选择</button>
												</div>
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">	&nbsp;
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">患者标签</label>
												<div id="tagsDiv" class="col-md-10">												
													<button class="btn btn-xs btn-primary">老年</button>
													<button class="btn btn-xs btn-primary">低收入</button>
													<button class="btn btn-xs btn-primary">体力劳动</button>
													<button class="btn btn-xs btn-primary">IgA肾病</button>
													<button class="btn btn-xs btn-primary">CKD四期</button>
													<button class="btn btn-xs btn-primary">腹膜透析</button>
													<button class="btn btn-xs btn-primary">血管通路</button>
													<button class="btn btn-xs btn-primary">血管通路</button>
													<button class="btn btn-xs btn-primary">血管通路</button>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-2 control-label">患者描述</label>
												<div class="col-md-10">
													<textarea class="form-control" rows="5">CDK四期患者，正在准备做血液透析。</textarea>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													<button id="addBtn" type="button" class="btn btn-primary">更新</button>
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
	$("#chooseTagBtn").bind("click", chooseTag);
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
	setupHtmlSelect("genderId", json.recs, 1, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillEducationLevels(json) {
	setupHtmlSelect("educationLevelId", json.recs, 5, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillNationalitys(json) {
	setupHtmlSelect("nationalityId", json.recs, 1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillEthnics(json) {
	setupHtmlSelect("ethnicId", json.recs, 2, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillIncomeLevels(json) {
	setupHtmlSelect("incomeLevelId", json.recs, 3, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillOccupations(json) {
	setupHtmlSelect("occupationId", json.recs, 2, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

function fillIdCardTypes(json) {
	setupHtmlSelect("idCardTypeId", json.recs, 1, false); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
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
	alert("添加患者信息成功！");
	window.location.href = "main?cmd=showFollowupPatients&stmId=1&ssmId=55&stmId=1";
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

function chooseTag() {
	window.location.href = "main?cmd=showPatientTagChoose&stmId=1&ssmId=55&stmId=1";
}
</script>