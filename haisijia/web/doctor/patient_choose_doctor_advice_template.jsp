<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>医嘱模板维护</h4>
						<div class="tools">
							<a id="addDoctorAdviceTemplateBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">确定</i>
							</a>
						</div>
					</div> 	
					<!-- 查询框开始 -->
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">模板名称</label>
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
					<!-- 查询框结束 -->
					<!-- 患者列表开始 -->
					<div class="box-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>#</th>
									<th>选择</th>
									<th>名称</th>
									<th>描述</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><input id="radioT1" type="radio" class="uniform" value="" /></td>
									<td><a href="main?cmd=showDoctorAdviceTemplateDetail&stmId=25&ssmId=27">老年男性患者</a></td>
									<td>老年男性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>2</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">老年女性患者</a></td>
									<td>老年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>3</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年男性患者</a></td>
									<td>中年男性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>4</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>5</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>6</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>7</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>8</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>9</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>		
								<tr>
									<td>10</td>
									<td><input type="radio" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">中年女性患者</a></td>
									<td>中年女性GFR>30</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
							</tbody>
						</table>

						
						
						
					<table style="width: 100%; text-align: right;">
					<tr><td>
					<ul class="pagination">
					<li><a href="#">共*条记录，共*页第*页</a></li>
					<li><a href="#">««</a></li>
					<li><a href="#">«</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li class="active"><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">»</a></li>
					<li><a href="#">»»</a></li>
					</ul>
					</td></tr>
					</table>
					</div>
					<!-- 患者列表结束 -->
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
	$("#addDoctorAdviceTemplateBtn").bind("click", showAddDoctorAdviceTemplate);
	$("#radioT1").bind("click", returnToPatientCurePlan);
});

function returnToPatientCurePlan() {
	window.location.href = "main?cmd=showPatientCurePlan&stmId=22&ssmId=24";
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

function showAddDoctorAdviceTemplate() {
	window.location.href = "main?cmd=showAddDoctorAdviceTemplate&stmId=25&ssmId=27";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}
</script>
                    