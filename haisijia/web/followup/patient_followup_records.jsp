<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4>
							<i class="fa fa-table"></i>
							<a href="" style="color: white;">随访记录</a> >>
							<a href="" style="color: white;">赵一随访列表</a>
						</h4>
					</div> 	
					<!-- 查询框开始 -->
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">开始日期</label>
								<div class="col-md-4">
									<input  class="form-control datepicker" type="text" name="startDate" id="startDate" size="10">
								</div>
								<label class="col-md-2 control-label">结束日期</label>
								<div class="col-md-4">
									<input  class="form-control datepicker" type="text" name="endDate" id="endDate" size="10">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">随访名称</label>
								<div class="col-md-4">
									<input class="form-control" type="text" name="jcName" size="10" id="jcName">
								</div>
								<label class="col-md-2 control-label">随访状态</label>
								<div class="col-md-4">
									<select id="followupStatusId" class="form-control">
										<option value="0">全部</option>
										<option value="1">计划中</option>
										<option value="2">执行中</option>
										<option value="3">已完成</option>
										<option value="4">已取消</option>
									</select>
								</div>
							</div>				
							<div class="form-group">
								<label class="col-md-2 control-label">&nbsp;</label>
								<div class="col-md-4">
									<button type="button" class="btn btn-primary">查询</button>
								</div>
								<label class="col-md-2 control-label">&nbsp;</label>
								<div class="col-md-4">
									&nbsp;
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
									<th>随访名称</th>
									<th>随访日期</th>
									<th>随访人</th>
									<th>结果</th>
									<th>标签</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="main?cmd=showUpdateFollowupPatientResult&stmId=12&ssmId=14">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长1</td>
									<td>极感兴趣</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
											<div id="p_tag_1" class="popover fade left in" style="top: 220px; left: 720px; display: none;">
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
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>2</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">白求恩血液中心患者教育</a></td>
									<td>2016-05-15</td>
									<td>王天长</td>
									<td>一般</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>反感</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>9</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>10</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>王天长</td>
									<td>感兴趣</td>
									<td style="text-align: center;">
										<a id="rd_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
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
						<!-- 页面导航开始 -->
						<table style="width: 100%; text-align: right;">
							<tr>
								<td>
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
								</td>
							</tr>
						</table>
						<!-- 页面导航结束 -->
					</div>
					<!-- 列表结束 -->
				</div>
				<!-- /BOX -->
			</div>
		</div>			
	</div>
</div>

<script type="text/javascript">
$(document).ready(function () {
	$("#addFollowupPlanBtn").bind("click", addFollowupPlan);
	$("#pp_1").bind("click", showFollowupPlanPatients);
	$("#p_1").bind("mouseover", showTags);
	$("#p_1").bind("mouseout", hideTags);
});

function showTags() {
	$("#p_tag_1").css("display", "block");
}

function hideTags() {
	$("#p_tag_1").css("display", "none");
}

function addFollowupPlan() {
	window.location.href = 'main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13';
}

function showFollowupPlanPatients() {
	window.location.href = "main?cmd=showFollowupPlanPatients&stmId=12&ssmId=13&stmId=12&ssmId=13";
}
</script>
                    