<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>待处理医嘱</h4>
						<div class="tools">
							<a id="addFollowupPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">确定</i>
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
									<th>状态</th>
									<th>原因</th>
									<th>编辑</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="main?cmd=showResidentPatientDetail&stmId=1&ssmId=56&stmId=1">赵一</a></td>
									<td>
										<select class="" size="1">
											<option value="3">护士审核未通过</option>
											<option value="4">库存审核未通过</option>
											<option value="5">财务审核未通过</option>
										</select>
									</td>
									<td>应该使用可的松龙注射液</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-pencil-square-o"></i>
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
									<td><a href="main?cmd=showResidentPatientDetail&stmId=1&ssmId=56&stmId=1">赵一</a></td>
									<td>
										<select class="" size="1">
											<option value="3">护士审核未通过</option>
											<option value="4" selected>库存审核未通过</option>
											<option value="5">财务审核未通过</option>
										</select>
									</td>
									<td>库存中没有哈药六厂的盐酸二甲双胍肠溶片</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-pencil-square-o"></i>
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
									<td><a href="main?cmd=showResidentPatientDetail&stmId=1&ssmId=56&stmId=1">赵一</a></td>
									<td>
										<select class="" size="1">
											<option value="3">护士审核未通过</option>
											<option value="4">库存审核未通过</option>
											<option value="5" selected>财务审核未通过</option>
										</select>
									</td>
									<td>穿刺针应该出现在收费单据中</td>
									<td style="text-align: center;">
										<a id="rd_1" href="javascript:;" class="remove">
											<i class="fa fa-pencil-square-o"></i>
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
	confirm("您确定要删除这条医嘱吗？");
}

function showAddFollowupPatient() {
	window.location.href = "main?cmd=showResidentPatientNew&stmId=1&ssmId=56&stmId=1";
}

function enrollPatient() {
	window.location.href = "main?cmd=showCreateDoctorAdvice&stmId=25&ssmId=30";
}
</script>
                    