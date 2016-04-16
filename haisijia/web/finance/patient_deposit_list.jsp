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
									<th>押金额</th>
									<th style="text-align: center;">收退款</th>
									<th style="text-align: center;">结算</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="main?cmd=showPatientDepositIo&stmId=40&ssmId=41">赵一</a></td>
									<td>男</td>
									<td>55</td>
									<td>H001</td>
									<td>5000</td>
									<td style="text-align: center;">
										<a id="p_01" href="javascript:;" class="remove">
											<i class="fa fa-cny"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_01" href="javascript:;" class="remove">
											<i class="fa fa-credit-card"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>2</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">钱二</a></td>
									<td>男</td>
									<td>55</td>
									<td>H001</td>
									<td>5000</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-cny"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-credit-card"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>3</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">孙三</a></td>
									<td>男</td>
									<td>55</td>
									<td>H001</td>
									<td>5000</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-cny"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-credit-card"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>4</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">李四</a></td>
									<td>男</td>
									<td>55</td>
									<td>H001</td>
									<td>5000</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-cny"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-credit-card"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>5</td>
									<td><a href="main?cmd=showFollowupPatientDetail&stmId=1&ssmId=55&stmId=1">周五</a></td>
									<td>男</td>
									<td>55</td>
									<td>H001</td>
									<td>5000</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-cny"></i>
										</a>
									</td>
									<td style="text-align: center;">
										<a id="pd_1" href="javascript:;" class="remove">
											<i class="fa fa-credit-card"></i>
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
                    