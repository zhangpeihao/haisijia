<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>随访计划</h4>
						<div class="tools">
							<a id="addPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">添加</i>
							</a>
						</div>
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
									<th>随访名称</th>
									<th>开始日期</th>
									<th>结束日期</th>
									<th>状态</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">五一优惠透析加速计划</a></td>
									<td>2016-04-15</td>
									<td>2016-04-30</td>
									<td>执行中</td>
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
									<td>2016-05-31</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>完成</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
									<td>2016-04-30</td>
									<td>计划</td>
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
});
</script>
                    