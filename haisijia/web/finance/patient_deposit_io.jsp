<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4>
							<i class="fa fa-table"></i>
							<a href="main?cmd=showPatientDepositList&stmId=40&ssmId=41" style="color: white;">患者押金管理</a> >>
							交费明细
						</h4>					
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
					<div class="box-body" style="overflow: auto;" >
						<table class="table table-bordered table-striped" style="table-layout:fixed; word-break: break-all; word-wrap: break-word;font-size: 5px; width: 1600px;">
							<thead>
								<tr>
									<th>#</th>
									<th>发票号</th>
									<th>编号</th>
									<th>时间</th>
									<th>金额</th>
									<th>支付方式</th>
									<th>类型</th>
									<th>开户银行</th>
									<th>支票号</th>
									<th>银行账号</th>
									<th>收款员</th>
									<th>退款号</th>
									<th>使用标志</th>
									<th>交款人</th>
									<th>与患者关系</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>F001</td>
									<td>B001</td>
									<td>2016-04-16 10:55</td>
									<td>3000</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
											<option value="3">支付宝</option>
											<option value="4">微信</option>
											<option value="5">网银</option>
										</select>
									</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">收款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>中国工商银行</td>
									<td>Z001</td>
									<td>1832494829348274328</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">赵一财</option>
											<option value="2">钱二财</option>
											<option value="3">孙三财</option>
										</select>
									</td>
									<td>T001</td>
									<td>是</td>
									<td>赵一交</td>
									<td>儿子</td>
								</tr>
								<tr>
									<td>2</td>
									<td>F002</td>
									<td>B001</td>
									<td>2016-04-18 10:55</td>
									<td>3000</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">现金</option>
											<option value="2" selected>支票</option>
											<option value="3">支付宝</option>
											<option value="4">微信</option>
											<option value="5">网银</option>
										</select>
									</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">收款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>中国工商银行</td>
									<td>Z001</td>
									<td>1832494829348274328</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">赵一财</option>
											<option value="2">钱二财</option>
											<option value="3">孙三财</option>
										</select>
									</td>
									<td>T001</td>
									<td>是</td>
									<td>赵一交</td>
									<td>儿子</td>
								</tr>
								<tr style="color: red;">
									<td>3</td>
									<td>F001</td>
									<td>B001</td>
									<td>2016-04-12 10:55</td>
									<td>-3000</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
											<option value="3" selected>支付宝</option>
											<option value="4">微信</option>
											<option value="5">网银</option>
										</select>
									</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">收款</option>
											<option value="2" selected>退款</option>
										</select>
									</td>
									<td>中国工商银行</td>
									<td>Z001</td>
									<td>1832494829348274328</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">赵一财</option>
											<option value="2">钱二财</option>
											<option value="3">孙三财</option>
										</select>
									</td>
									<td>T001</td>
									<td>是</td>
									<td>赵一交</td>
									<td>儿子</td>
								</tr>
								<tr>
									<td>4</td>
									<td>F001</td>
									<td>B001</td>
									<td>2016-04-16 10:55</td>
									<td>3000</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
											<option value="3">支付宝</option>
											<option value="4">微信</option>
											<option value="5">网银</option>
										</select>
									</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">收款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>中国工商银行</td>
									<td>Z001</td>
									<td>1832494829348274328</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">赵一财</option>
											<option value="2">钱二财</option>
											<option value="3">孙三财</option>
										</select>
									</td>
									<td>T001</td>
									<td>是</td>
									<td>赵一交</td>
									<td>儿子</td>
								</tr>
								<tr>
									<td>5</td>
									<td>F001</td>
									<td>B001</td>
									<td>2016-04-16 10:55</td>
									<td>3000</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
											<option value="3">支付宝</option>
											<option value="4">微信</option>
											<option value="5">网银</option>
										</select>
									</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">收款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>中国工商银行</td>
									<td>Z001</td>
									<td>1832494829348274328</td>
									<td>
										<select class="form-control" size="1">
											<option value="1">赵一财</option>
											<option value="2">钱二财</option>
											<option value="3">孙三财</option>
										</select>
									</td>
									<td>T001</td>
									<td>是</td>
									<td>赵一交</td>
									<td>儿子</td>
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
	window.location.href = "main?cmd=showFollowupPatientNew&stmId=1&ssmId=55&stmId=1";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}
</script>
                    