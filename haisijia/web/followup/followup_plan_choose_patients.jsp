<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4>
							<i class="fa fa-table"></i>
							<a href="main?cmd=showFollowupPlans&stmId=12&ssmId=13&stmId=12&ssmId=13" style="color: white;">随访计划</a> >>
							<a href="main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13" style="color: white;">随访计划添加</a> >>
							添加患者
						</h4>
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
									<th>选择</th>
									<th>姓名</th>
									<th>性别</th>
									<th>年龄</th>
									<th>教育程度</th>
									<th>职业</th>
									<th>收入</th>
									<th>手机</th>
									<th>邮件</th>
									<th>标签</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">赵一</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
											<div id="p_tag_1" class="popover fade left in" style="top: 120px; left: 830px; display: none;">
												<div class="arrow"></div>
												<h3 class="popover-title">赵一的标签</h3>
												<div class="popover-content">
													<button class="btn btn-xs btn-primary">老年</button>
													<button class="btn btn-xs btn-primary">低收入</button>
													<button class="btn btn-xs btn-primary">体力劳动</button>
													<button class="btn btn-xs btn-primary">IgA肾病</button>
													<button class="btn btn-xs btn-primary">CKD四期</button>
													<button class="btn btn-xs btn-primary">腹膜透析</button>
													<button class="btn btn-xs btn-primary">血管通路</button>
												</div>
											</div>
										</a>
									</td>
								</tr>	
								<tr>
									<td>2</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">钱二</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>3</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">孙三</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>4</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">李四</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">周五</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>6</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">武六</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>7</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">郑七</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td><input type="checkbox" class="uniform" value=""></td>
									<td><a href="#">王八</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="p_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
	window.location.href = "main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}
</script>
                    