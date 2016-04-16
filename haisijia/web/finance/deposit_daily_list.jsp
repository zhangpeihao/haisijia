<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>押金日查询</h4>
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
								<label class="col-md-2 control-label">收据类型</label>
								<div class="col-md-4">
									<select class="form-control" size="1">
										<option value="1">交款</option>
										<option value="2">退款</option>
										<option value="3">作废</option>
										<option value="4">结算</option>
									</select>
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
									<th>收款员</th>
									<th>时间</th>
									<th>发票号</th>
									<th>病人ID</th>
									<th>姓名</th>
									<th>金额</th>
									<th>支付方式</th>
									<th>类型</th>
									<th>开户银行</th>
									<th>支票号</th>
									<th>银行账号</th>
									<th>退款号</th>							
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>
										<select size="1">
											<option value="1">赵一</option>
											<option value="2">钱二</option>
										</select>
									</td>
									<td>09:00</td>
									<td>F001</td>
									<td>1135</td>
									<td>张三</td>
									<td>10000</td>
									<td>
										<select size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">交款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">中国工商银行</option>
											<option value="2">中国建设银行</option>
										</select>
									</td>
									<td>Z001</td>
									<td>131423432</td>
									<td>T001</td>
								</tr>
								<tr>
									<td>2</td>
									<td>
										<select size="1">
											<option value="1">赵一</option>
											<option value="2">钱二</option>
										</select>
									</td>
									<td>09:23</td>
									<td>F002</td>
									<td>1150</td>
									<td>郑三</td>
									<td>10000</td>
									<td>
										<select size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">交款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">中国工商银行</option>
											<option value="2">中国建设银行</option>
										</select>
									</td>
									<td>Z001</td>
									<td>131423432</td>
									<td>T001</td>
								</tr>
								<tr>
									<td>3</td>
									<td>
										<select size="1">
											<option value="1">赵一</option>
											<option value="2">钱二</option>
										</select>
									</td>
									<td>10:00</td>
									<td>F003</td>
									<td>1160</td>
									<td>李二</td>
									<td>10000</td>
									<td>
										<select size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">交款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">中国工商银行</option>
											<option value="2">中国建设银行</option>
										</select>
									</td>
									<td>Z001</td>
									<td>131423432</td>
									<td>T001</td>
								</tr>
								<tr>
									<td>4</td>
									<td>
										<select size="1">
											<option value="1">赵一</option>
											<option value="2">钱二</option>
										</select>
									</td>
									<td>12:00</td>
									<td>F004</td>
									<td>1170</td>
									<td>王一</td>
									<td>10000</td>
									<td>
										<select size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">交款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">中国工商银行</option>
											<option value="2">中国建设银行</option>
										</select>
									</td>
									<td>Z001</td>
									<td>131423432</td>
									<td>T001</td>
								</tr>
								<tr>
									<td>5</td>
									<td>
										<select size="1">
											<option value="1">赵一</option>
											<option value="2">钱二</option>
										</select>
									</td>
									<td>17:00</td>
									<td>F005</td>
									<td>1180</td>
									<td>周五</td>
									<td>10000</td>
									<td>
										<select size="1">
											<option value="1">现金</option>
											<option value="2">支票</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">交款</option>
											<option value="2">退款</option>
										</select>
									</td>
									<td>
										<select size="1">
											<option value="1">中国工商银行</option>
											<option value="2">中国建设银行</option>
										</select>
									</td>
									<td>Z001</td>
									<td>131423432</td>
									<td>T001</td>
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
                    