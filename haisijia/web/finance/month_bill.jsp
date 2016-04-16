<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4><i class="fa fa-table"></i>日收费单</h4>
						<div class="tools">
							<a id="addFollowupPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">打印</i>
							</a>
						</div>
					</div> 	
					<!-- 查询框结束 -->
					<!-- 患者列表开始 -->
					<div class="box-body">
						<div class="alert alert-success">
							<p>
								<table style="width: 100%;">
									<tr>
										<td>开始日期</td>
										<td><input class="form-control datepicker" type="text" name="startTime" size="10" id="startTime" value="2016-04-11"></td>
										<td>结束日期</td>
										<td><input class="form-control datepicker" type="text" name="startTime" size="10" id="startTime" value="2016-04-17"></td>
										<td><button type="button" class="btn btn-primary">查询</button></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>患者姓名</td>
										<td><input type="text" class="form-control" value="张三" /></td>
										<td>性别</td>
										<td>
											<select class="form-control" size="1">
												<option value="1">男</option>
												<option value="2">女</option>
											</select>
										</td>
										<td>年龄</td>
										<td><input type="text" class="form-control" value="55" /></td>
									</tr>
									<tr>
										<td>透析区</td>
										<td>
											<select class="form-control" size="1">
												<option value="1">A区</option>
												<option value="1">B区</option>
												<option value="1">C区</option>
											</select>
										</td>
										<td>虚拟床号</td>
										<td><input type="text" class="form-control" value="B010_1" /></td>
										<td>真实床号</td>
										<td><input type="text" class="form-control" value="B010" /></td>
									</tr>
								</table>
							</p>
						</div>
	
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>&nbsp;</th>
									<th>&nbsp;</th>									
									<th colSpan="7" style="text-align: center;">治疗</th>									
									<th>&nbsp;</th>
									<th>&nbsp;</th>
									<th>&nbsp;</th>
								</tr>
								<tr>
									<th>#</th>
									<th>日期</th>
									<th>治疗</th>
									<th>药品</th>
									<th>检查</th>
									<th>卫材</th>
									<th>化验</th>
									<th>输氧</th>
									<th>手术</th>
									<th>金额</th>
									<th>自费</th>
									<th>医保</th>
								</tr>
							</thead>
								<tr>
									<td>1</td>
									<td>2016-04-11</td>
									<td>100.00</td>
									<td>110.00</td>
									<td>120.00</td>
									<td>130.00</td>
									<td>140.00</td>
									<td>150.00</td>
									<td>0.00</td>
									<td>800.00</td>
									<td>160.00</td>
									<td>540.00</td>
								</tr>
								<tr>
									<td>2</td>
									<td>2016-04-12</td>
									<td>100.00</td>
									<td>110.00</td>
									<td>120.00</td>
									<td>130.00</td>
									<td>140.00</td>
									<td>150.00</td>
									<td>0.00</td>
									<td>800.00</td>
									<td>160.00</td>
									<td>540.00</td>
								</tr>
								<tr>
									<td>3</td>
									<td>2016-04-16</td>
									<td>100.00</td>
									<td>110.00</td>
									<td>120.00</td>
									<td>130.00</td>
									<td>140.00</td>
									<td>150.00</td>
									<td>0.00</td>
									<td>800.00</td>
									<td>160.00</td>
									<td>540.00</td>
								</tr>
								<tr>
									<td>4</td>
									<td>2016-04-20</td>
									<td>100.00</td>
									<td>110.00</td>
									<td>120.00</td>
									<td>130.00</td>
									<td>140.00</td>
									<td>150.00</td>
									<td>0.00</td>
									<td>800.00</td>
									<td>160.00</td>
									<td>540.00</td>
								</tr>
								<tr>
									<td>5</td>
									<td>2016-04-25</td>
									<td>100.00</td>
									<td>110.00</td>
									<td>120.00</td>
									<td>130.00</td>
									<td>140.00</td>
									<td>150.00</td>
									<td>0.00</td>
									<td>800.00</td>
									<td>160.00</td>
									<td>540.00</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>合计</td>
									<td colSpan="7">&nbsp;</td>
									<td>7800.00</td>
									<td>6160.00</td>
									<td>6540.00</td>
								</tr>
							<tbody>
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
                    