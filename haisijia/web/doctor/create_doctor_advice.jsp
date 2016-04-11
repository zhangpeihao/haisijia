<style>
/* 选中表格行 */
.table-select{border: 3px solid red;}
.items_del {}
/* 序号 */
.da_col_1 {
	width: 2%;
}
/* 长期临时医嘱 */
.da_col_2 {
	width: 2%;
	table-layout:fixed ;
}
/* 3.类别 */
.da_col_3 {
	width: 4%;
	table-layout:fixed ;
}
.da_col_select {
	width: 100%;
	font-size: 12px;
}
/* 下达时间 */
.da_col_4 {
	width: 7%;
	table-layout:fixed ;
}
.da_time_input {
	width: 100%;
	height: 20px;
	font-size: 6px;
	padding-left: 0px;
}
/* 医嘱内容 */
.da_col_5 {
	width: 8%;
	table-layout:fixed ;
}
.da_text_input {
	width: 100%;
	font-size: 12px;
}
/* 计价方式 */
.da_col_6 {
	width: 5%;
	table-layout:fixed ;
}
/* 剂量 */
.da_col_7 {
	width: 3%;
	table-layout:fixed ;
}
.da_col_7_input_1 {
	width: 100%;
}
/* 单位 */
.da_col_8 {
	width: 3%;
	table-layout:fixed ;
}
/* 途径 */
.da_col_9 {
	width: 5%;
	table-layout:fixed ;
}
/* 频次 */
.da_col_10 {
	width: 4%;
	table-layout:fixed ;
}
/* 执行时间 */
.da_col_11 {
	width: 7%;
	table-layout:fixed ;
}
/* 阴阳 */
.da_col_12 {
	width: 3%;
	table-layout:fixed ;
}
/* 结束时间 */
.da_col_13 {
	width: 7%;
	table-layout:fixed ;
}
/* 医生说明 */
.da_col_14 {
	width: 20%;
	table-layout:fixed ;
}
/* 医生 */
.da_col_15 {
	width: 5%;
	table-layout:fixed ;
}
/* 次数 */
.da_col_16 {
	width: 3%;
	table-layout:fixed ;
}
/* 停药医生 */
.da_col_17 {
	width: 5%;
	table-layout:fixed ;
}
/* 停止核对护士 */
.da_col_18 {
	width: 5%;
	table-layout:fixed ;
}
/*  */
.da_col_19 {
	width: 2%;
	text-align: center;
	table-layout:fixed ;
}
</style>		
<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4>
											<i class="fa fa-columns"></i>
											<a href="#" style="color: white;">开医嘱</a> >>
											新开医嘱
										</h4>
										<div class="tools">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i>确定
											</a>
										</div>
									</div>
									<div class="box-body big">
										<div class="alert alert-success">
										  <h4>患者信息</h4>
										  <p>床号：B035 姓名：张三 性别：男 年龄：50岁 身高：175cm 体重：66kg</p> <p></p>
										  <h4>医嘱模板</h4>
										  <p>
											<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">通用模板&nbsp;&nbsp;
											<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">老年男性&nbsp;&nbsp;
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">老年女性&nbsp;&nbsp;		
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年女性&nbsp;&nbsp;	
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年男性&nbsp;&nbsp;			
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年女性&nbsp;&nbsp;	
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年男性&nbsp;&nbsp;			
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">糖尿病&nbsp;&nbsp;	
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">高血压&nbsp;&nbsp;			
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">血稠&nbsp;&nbsp;	
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">出血倾向&nbsp;&nbsp;				
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">心血管&nbsp;&nbsp;	
											<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">脑血管&nbsp;&nbsp;			
										  </p>
										</div>
										<div class="row">
										
											<div class="col-md-2">
												<div class="panel panel-default">
													<div class="panel-body">
														<div class="tabbable  tabs-below">
															<ul class="nav nav-tabs">
																<li class="active" style="font-size: 18px;"><a href="#" data-toggle="tab"><i class="fa fa-bullhorn"></i>A区</a></li>
																<li><a href="#tab_2_2" data-toggle="tab">李东1</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li style="font-size: 18px;"><a href="#" data-toggle="tab"><i class="fa fa-bullhorn"></i>B区</a></li>
																<li><a href="#tab_2_2" data-toggle="tab">李东1</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li style="font-size: 18px;"><a href="#" data-toggle="tab"><i class="fa fa-bullhorn"></i>C区</a></li>
																<li><a href="#tab_2_2" data-toggle="tab">李东1</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
																<li><a href="#tab_2_3" data-toggle="tab">患002</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>

										  <div class="col-md-10">
											 <div class="panel panel-default">
												<div class="panel-body">
													 <div class="tabbable">
														<ul class="nav nav-tabs">
														   <li class="active"><a href="#tab_1_1" data-toggle="tab"><i class="fa fa-home"></i> 医嘱</a></li>
														   <li><a href="#tab_1_2" data-toggle="tab"><i class="fa fa-envelope"></i> 治疗单</a></li>
														</ul>														
														<div class="tab-content">
												
															<!-- 医嘱开始 -->
														   <div class="tab-pane fade in active" style="overflow: auto;" id="tab_1_1">
															  <div class="divide-10" style="text-align: right;"></div>
															  <div style="text-align: right;">
																<button id="insertBefore" type="button" class="btn btn-primary">插入（前）</button>&nbsp;
																<button id="insertAfter" type="button" class="btn btn-primary">追加（后）</button>&nbsp;
																<button type="button" class="btn btn-primary">打印</button>&nbsp;
															  </div>	  
															  
																<table id="daItemsTable" class="table table-bordered table-striped" style="table-layout:fixed; word-break: break-all; word-wrap: break-word;font-size: 5px; width: 2000px;">
																	<thead>
																		<tr>
																			<th class="da_col_1">#</th>
																			<th class="da_col_2">长临</th>
																			<th class="da_col_3">类别</th>
																			<th class="da_col_4">下达时间</th>
																			<th class="da_col_5">医嘱内容</th>
																			<th class="da_col_6">计价</th>
																			<th class="da_col_7">剂量</th>
																			<th class="da_col_8">单位</th>
																			<th class="da_col_9">途径</th>
																			<th class="da_col_10">频次</th>
																			<th class="da_col_11">执行时间</th>
																			<th class="da_col_12">阴阳</th>
																			<th class="da_col_13">结束时间</th>
																			<th class="da_col_14">医生说明</th>
																			<th class="da_col_15">医生</th>
																			<th class="da_col_16">次数</th>
																			<th class="da_col_17">停止医生</th>
																			<th class="da_col_18">停止核对护士</th>
																			<th class="da_col_19">删除</th>
																		</tr>
																	</thead>
																	<tbody>
																	</tbody>
																</table>
																
																<!-- 药品列表开始 -->
																<table id="drugTable" class="table table-bordered table-striped" style="background-color: white; table-layout:fixed; word-break: break-all; word-wrap: break-word; font-size: 5px; width: 100%; display: none;">
																	<thead>
																		<tr>
																			<th class="">#</th>
																			<th class="">药品名称</th>
																			<th class="">库存</th>
																			<th class="">装单</th>
																			<th class="">规格</th>
																			<th class="">别名</th>
																			<th class="">库房</th>
																			<th class="">单次剂量</th>
																			<th class="">单次剂量单位</th>
																			<th class="">输入码</th>
																			<th class="">药品代码</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td class="">1</td>
																			<td class=""><span id="drug_1">氨荼碱注射液</span></td>
																			<td class="">10</td>
																			<td class="">支</td>
																			<td class="">0.5g:2ml 白云山明兴</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">一级库</td>
																			<td class="">0.5</td>
																			<td class="">g</td>
																			<td class="">acjzsy</td>
																			<td class="">0803001ZS0</td>
																		</tr>
																		<tr>
																			<td class="">2</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">10</td>
																			<td class="">支</td>
																			<td class="">0.5g:2ml 白云山明兴</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">一级库</td>
																			<td class="">0.5</td>
																			<td class="">g</td>
																			<td class="">acjzsy</td>
																			<td class="">0803001ZS0</td>
																		</tr>
																		<tr>
																			<td class="">3</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">10</td>
																			<td class="">支</td>
																			<td class="">0.5g:2ml 白云山明兴</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">一级库</td>
																			<td class="">0.5</td>
																			<td class="">g</td>
																			<td class="">acjzsy</td>
																			<td class="">0803001ZS0</td>
																		</tr>
																		<tr>
																			<td class="">4</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">10</td>
																			<td class="">支</td>
																			<td class="">0.5g:2ml 白云山明兴</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">一级库</td>
																			<td class="">0.5</td>
																			<td class="">g</td>
																			<td class="">acjzsy</td>
																			<td class="">0803001ZS0</td>
																		</tr>
																		<tr>
																			<td class="">5</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">10</td>
																			<td class="">支</td>
																			<td class="">0.5g:2ml 白云山明兴</td>
																			<td class="">氨荼碱注射液</td>
																			<td class="">一级库</td>
																			<td class="">0.5</td>
																			<td class="">g</td>
																			<td class="">acjzsy</td>
																			<td class="">0803001ZS0</td>
																		</tr>
																	</tbody>
																</table>
																<!-- 药品列表结束 -->
																
																<table id="materialTable" class="table table-bordered table-striped" style="background-color: white; table-layout:fixed; word-break: break-all; word-wrap: break-word; font-size: 5px; width: 100%; display: none;">
																	<thead>
																		<tr>
																			<th class="">#</th>
																			<th class="">代码</th>
																			<th class="">名称</th>
																			<th class="">拼音</th>
																			<th class="">五笔</th>
																			<th class="">类别</th>
																			<th class="">扩展</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td class="">1</td>
																			<td class="">SS0038</td>
																			<td class=""><span id="material_1">半永久中心静脉导管拨管术</span></td>
																			<td class="">BYJZXJMDGBGS</td>
																			<td class="">UFJSKSISK</td>
																			<td class="">F</td>
																			<td class="">&nbps;</td>
																		</tr>
																		<tr>
																			<td class="">2</td>
																			<td class="">SS0038</td>
																			<td class=""><span id="material_2">半永久中心静脉导管拨管术</span></td>
																			<td class="">BYJZXJMDGBGS</td>
																			<td class="">UFJSKSISK</td>
																			<td class="">F</td>
																			<td class="">&nbps;</td>
																		</tr>
																		<tr>
																			<td class="">3</td>
																			<td class="">SS0038</td>
																			<td class=""><span id="m_3">半永久中心静脉导管拨管术</span></td>
																			<td class="">BYJZXJMDGBGS</td>
																			<td class="">UFJSKSISK</td>
																			<td class="">F</td>
																			<td class="">&nbps;</td>
																		</tr>
																		<tr>
																			<td class="">4</td>
																			<td class="">SS0038</td>
																			<td class=""><span id="m_4">半永久中心静脉导管拨管术</span></td>
																			<td class="">BYJZXJMDGBGS</td>
																			<td class="">UFJSKSISK</td>
																			<td class="">F</td>
																			<td class="">&nbps;</td>
																		</tr>
																		<tr>
																			<td class="">5</td>
																			<td class="">SS0038</td>
																			<td class=""><span id="m_5">半永久中心静脉导管拨管术</span></td>
																			<td class="">BYJZXJMDGBGS</td>
																			<td class="">UFJSKSISK</td>
																			<td class="">F</td>
																			<td class="">&nbps;</td>
																		</tr>
																	</tbody>
																</table>
																
																
															  <p></p>
														   </div>
														   <!-- 医嘱结束 -->
														   <!-- 治疗单开始 -->
														   <div class="tab-pane fade" id="tab_1_2">
																<div class="divide-10"></div>
															  <p> Everyone turned toward me and gave me the death stare and I knew I had screwed up once again, they all walked in slow motion towards me saying the same familiar chant I had heard earlier, before anyone could reach me I awoke in a frantic sweaty rush in my bed. My legs were no longer on fire and I felt slightly normal again. I noticed that my mom, a preacher, and several other family members were standing around me. </p>
														   </div>
														   <!-- 治疗单结束 -->
														</div>
													 </div>
												 </div>
											 </div>
										  </div>	
									   </div>
									</div>
								</div>
								<!-- /BOX -->
				
				
				
				
				
			</div>
		</div>			
	</div>
</div>

<script type="text/javascript">
$(document).ready(function () {
	$("#p_1").bind("mouseover", showTags);
	$("#p_1").bind("mouseout", hideTags);
	$("#pd_1").bind("click", deletePatient);
	$("#rd_1").bind("click", enrollPatient);
	$("#addFollowupPatientBtn").bind("click", showAddFollowupPatient);
	// 绑定添加行
	$("#insertBefore").bind("click", insertBefore);
	$("#insertAfter").bind("click", insertAfter);
	$("#daItemsTable tr").bind("click", selectRow);
	// 处理查询情况
	$("#drug_1").bind("click", hideDrugTable);
	$("#material_1").bind("click", hideMaterialTable);
	insertAfter();
	insertAfter();
	insertAfter();
	insertAfter();
	insertAfter();
});

function selectRow() {
	$("#daItemsTable .table-select").removeClass("table-select");
	$("this").addClass("table-select");
}

function showTags() {
	$("#p_tag_1").css("display", "block");
}

function hideTags() {
	$("#p_tag_1").css("display", "none");
}

function deletePatient() {
	confirm("您确定要删除这个患者吗？");
}

function showAddFollowupPatient() {
	window.location.href = "main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}


// 添加行
function insertBefore() {
	insertRow(1);
}

function insertAfter() {
	insertRow(2);
}


function newRowOnClick() {
	$("#daItemsTable .table-select").removeClass("table-select");
	$(this).addClass("table-select");
}

function newRowOnClickDelete(){
	if(window.confirm("确认删除该项？")){
		$(this).parent().remove();
	}
}
		
function insertRow(mode) {
	var rows = $("#daItemsTable tr").length;
	var selectedRow = undefined;
	if ($("#daItemsTable .table-select").length == 0 && 1 != rows) {
		alert("请先选中一条记录");
		return ;
	}
	if (1 == rows) {
		// 空表格时的处理
		selectedRow = $("#daItemsTable tr").eq(0);
		mode = 2;
	} else {
		selectedRow = $("#daItemsTable .table-select");
		selectedRow.removeClass("table-select");
	}
	var htmlStr = formDaItemsTableTr();
	//新增监听事件
	var currentRow = undefined;
	if (1 == mode) {
		selectedRow.before(htmlStr);
		currentRow = selectedRow.prev();
		selectedRow.prev().addClass("table-select");
		selectedRow.prev().on("click", newRowOnClick);
		selectedRow.prev().find(".items_del").on("click", newRowOnClickDelete);
	} else {
		selectedRow.after(htmlStr);
		currentRow = selectedRow.next();
		selectedRow.next().addClass("table-select");
		selectedRow.next().on("click", newRowOnClick);
		selectedRow.next().find(".items_del").on("click", newRowOnClickDelete);
	}
	App.setPage("elements");
	$(".datepicker").datepicker({dateFormat: 'yy-mm-dd hh:mi',});
	$(".inlinepicker").datepicker({
		inline: true,
		showOtherMonths: true
	});
	$(".datepicker-fullscreen").pickadate();
	$(".timepicker-fullscreen").pickatime();
	currentRow.children().eq(4).children().eq(0).each(bindItemNameSpanClick);
}

function bindItemNameSpanClick(idx, elem) {
    var elemId = elem.id;
    var arrs = elemId.split("_");
    var bzId = parseInt(arrs[1]);
    $("#" + elemId).bind("click", onClickItemNameSpan);
}

/**
* 删除患者图标单击事件，先求出患者编号，然后询问用户是否删除，如果删除则调用
* Ajax进行删除操作
* 【闫涛 2015.03.28】初始版本
*/
function onClickItemNameSpan() {
    var arrs = this.id.split("_");
    var itemId = parseInt(arrs[1]);
	var itemNameSpan = $("#daItemsTable .table-select").children().eq(4).children().eq(0);
	var left = itemNameSpan.offset().left;
	var top = itemNameSpan.offset().top - 240;
	var daType = parseInt($("#daItemsTable .table-select").children().eq(2).children().eq(0).val());
    switch (daType) {
	case 1:
		$("#drugTable").css("position", "absolute");
		$("#drugTable").css("left", 0);
		$("#drugTable").css("top", "" + top);
		$("#drugTable").css("display", "block");
		break;
	case 2:
		$("#materialTable").css("position", "absolute");
		$("#materialTable").css("left", 0);
		$("#materialTable").css("top", "" + top);
		$("#materialTable").css("display", "block");
		break;
	case 3:
		alert("添加治疗");
		break;
	case 4:
		alert("添加检查检验");
		break;
	}
}

function hideDrugTable() {
	$("#drugTable").css("display", "none");
}

function hideMaterialTable() {
	$("#materialTable").css("display", "none");
}

var g_seq = 1;
function formDaItemsTableTr() {
	var htmlStr = "<tr>";
	htmlStr += "<td  class=\"da_col_1\">" + g_seq + "</td>";
	htmlStr += "<td  class=\"da_col_2\"><input type=\"checkbox\" class=\"uniform\" value=\"\"></td>";
	// 类别
	htmlStr += "<td  class=\"da_col_3\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">药品</option>";
	htmlStr += "<option value=\"2\">耗材</option>";
	htmlStr += "<option value=\"3\">治疗</option>";
	htmlStr += "<option value=\"4\">检验检查</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 开始时间
	htmlStr += "<td  class=\"da_col_4\"><input class=\"form-control datepicker da_time_input\" type=\"text\" name=\"endDate\" id=\"endDate" + g_seq + "\" size=\"16\" value=\"2016-04-09 16:30\" /></td>";
	// 医嘱内容
	htmlStr += "<td  class=\"da_col_5\"><span id=\"daItem_" + g_seq + "\">盐酸二甲双胍肠溶片</span></td>";
	// 计价方式
	htmlStr += "<td class=\"da_col_6\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">自带药品</option>";
	htmlStr += "<option value=\"2\">手工处理</option>";
	htmlStr += "<option value=\"3\">不计价</option>";
	htmlStr += "<option value=\"4\">不摆药</option>";
	htmlStr += "<option value=\"5\">出院结算</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 剂量
	htmlStr += "<td class=\"da_col_7\"><input type=\"text\" class=\"da_col_7_input_1\" /></td>";
	// 单位
	htmlStr += "<td class=\"da_col_8\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">g</option>";
	htmlStr += "<option value=\"2\">mg</option>";
	htmlStr += "<option value=\"3\">ug</option>";
	htmlStr += "<option value=\"4\">片</option>";
	htmlStr += "<option value=\"5\">粒</option>";
	htmlStr += "<option value=\"6\">丸</option>";
	htmlStr += "<option value=\"7\">l</option>";
	htmlStr += "<option value=\"8\">dl</option>";
	htmlStr += "<option value=\"9\">ml</option>";
	htmlStr += "<option value=\"10\">支</option>";
	htmlStr += "<option value=\"11\">剂</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 给药方式
	htmlStr += "<td class=\"da_col_9\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">静脉注射</option>";
	htmlStr += "<option value=\"2\">静脉点滴</option>";
	htmlStr += "<option value=\"3\">封管</option>";
	htmlStr += "<option value=\"4\">口服</option>";
	htmlStr += "<option value=\"5\">舌下含服</option>";
	htmlStr += "<option value=\"6\">皮下注射</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 频次
	htmlStr += "<td class=\"da_col_10\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">1/日</option>";
	htmlStr += "<option value=\"1\">2/日</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 执行时间
	htmlStr += "<td class=\"da_col_11\"><input class=\"form-control datepicker da_time_input\"" + 
				" type=\"text\" name=\"endDate2\" id=\"endDate2\" size=\"16\" value=\"2016-04-09 16:30\" /></td>";
	htmlStr += "<td class=\"da_col_12\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">阳（+）</option>";
	htmlStr += "<option value=\"2\">阴（-）</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 结束时间
	htmlStr += "<td class=\"da_col_13\"><input class=\"form-control datepicker da_time_input\"" + 
				" type=\"text\" name=\"endDate3\" id=\"endDate3\" size=\"16\" value=\"2016-04-09 16:30\" /></td>";
	// 医生说明
	htmlStr += "<td class=\"da_col_14\"><input type=\"text\" class=\"da_text_input\" value=\"如果出现低血压情况，应立即停止透析\" /></td>";
	// 医生
	htmlStr += "<td class=\"da_col_15\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">张三</option>";
	htmlStr += "<option value=\"2\">李长发</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 次数
	htmlStr += "<td class=\"da_col_16\"><input type=\"text\" class=\"da_text_input\" value=\"10\" /></td>";
	// 停止医生
	htmlStr += "<td class=\"da_col_17\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">张三</option>";
	htmlStr += "<option value=\"2\">李长发</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 停止核对护士
	htmlStr += "<td class=\"da_col_17\">";
	htmlStr += "<select size=\"1\" class=\"da_col_select\">";
	htmlStr += "<option value=\"1\">赵四</option>";
	htmlStr += "<option value=\"2\">王长发</option>";
	htmlStr += "</select>";
	htmlStr += "</td>";
	// 删除
	htmlStr += "<td  class=\"da_col_19 items_del\">";
	htmlStr += "<a id=\"pd_1\" href=\"javascript:;\" class=\"remove\">";
	htmlStr += "<i class=\"fa fa-times\"></i>";
	htmlStr += "</a>";
	htmlStr += "</td>";
	htmlStr += "</tr>";
	g_seq++;
	return htmlStr;
}	
</script>
                    