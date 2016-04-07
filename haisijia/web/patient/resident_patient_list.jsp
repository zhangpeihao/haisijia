<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>住院患者维护</h4>
						<div class="tools">
							<a id="addFollowupPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">添加</i>
							</a>
						</div>
					</div> 	
					<!-- 查询框开始 -->
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">姓名</label>
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
									<th>姓名</th>
									<th>性别</th>
									<th>年龄</th>
									<th>住院号</th>
									<th>虚拟床号</th>
									<th>医保类型</th>
									<th>主管医生</th>
									<th>责任护士</th>
									<th>透析计划</th>
									<th>出院</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="main?cmd=showResidentPatientDetail&stmId=1&ssmId=56&stmId=1">赵一</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵二</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>两周五次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵三</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵四</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵五</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>6</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵六</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>7</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵七</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵八</a></td>
									<td>男</td>
									<td>55</td>
									<td>H0001</td>
									<td>B052</td>
									<td>新农合</td>
									<td>李光</td>
									<td>王娟</td>
									<td>一周三次</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-minus-square"></i>
										</a>
									</td>
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
	$("#addFollowupPatientBtn").bind("click", showAddFollowupPatient);
});

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
	window.location.href = "main?cmd=showResidentPatientNew&stmId=1&ssmId=56&stmId=1";
}

function enrollPatient() {
	alert("办理患者出院");
	//window.location.href = "main?cmd=showResidentPatientNew&stmId=1&ssmId=55&stmId=1";
}
</script>
                    