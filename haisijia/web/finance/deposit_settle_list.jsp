<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>患者押金管理</h4>
						<!-- <div class="tools">
							<a id="addFollowupPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">交款</i>
							</a>
						</div> -->
					</div> 	
					<!-- 查询框开始 -->
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">开始时间</label>
								<div class="col-md-4">
									<input class="form-control datepicker" type="text" name="startTime" size="10" id="startTime">
								</div>
								<label class="col-md-2 control-label">结束时间</label>
								<div class="col-md-4">
									<input class="form-control datepicker" type="text" name="endDate" size="10" id="endDate">
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
						<div class="alert alert-success">
							<h4>押金信息</h4>
							<p>
								<table style="width: 100%;">
									<tr>
										<td>交款金额</td>
										<td><input type="text" value="10000" /></td>
										<td>交款人次</td>
										<td><input type="text" value="100" /></td>
										<td>退款金额</td>
										<td><input type="text" value="900" /></td>
									</tr>
									<tr>
										<td>退款人次</td>
										<td><input type="text" value="10000" /></td>
										<td>作废金额</td>
										<td><input type="text" value="100" /></td>
										<td>作废人次</td>
										<td><input type="text" value="900" /></td>
									</tr>
								</table>
							</p>
						</div>
	
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>#</th>
									<th>日期</th>
									<th>入账</th>
									<th>出账</th>
									<th>余额</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>2016-04-01</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>2</td>
									<td>2016-04-02</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>3</td>
									<td>2016-04-03</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>4</td>
									<td>2016-04-04</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>5</td>
									<td>2016-04-05</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>6</td>
									<td>2016-04-06</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>7</td>
									<td>2016-04-07</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>8</td>
									<td>2016-04-08</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>9</td>
									<td>2016-04-09</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>10</td>
									<td>2016-04-10</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
								</tr>
								<tr>
									<td>11</td>
									<td>2016-04-11</td>
									<td>15000</td>
									<td>0</td>
									<td>1000000</td>
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
	
	$("#p_01").bind("click", showPatientDepositIn);
});

function showPatientDepositIn() {
	window.location.href = "main?cmd=showPatientDepositIn&stmId=40&ssmId=41";
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
	window.location.href = "main?cmd=showFollowupPatientNew&stmId=1&ssmId=55&stmId=1";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}
</script>
                    