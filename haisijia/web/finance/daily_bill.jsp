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
										<td>日期</td>
										<td><input class="form-control datepicker" type="text" name="startTime" size="10" id="startTime"value="2016-04-16"></td>
										<td><button type="button" class="btn btn-primary">查询</button></td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp; </td>
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
									<th>#</th>
									<th>项目类别</th>
									<th>诊疗项目</th>
									<th>规格</th>
									<th>单位</th>
									<th>数量</th>
									<th>单价</th>
									<th>金额</th>
									<th>备注</th>
								</tr>
							</thead>
							<tbody
								<tr>
									<td>1</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7">药品</option>
											<option value="2">检查</option>
											<option value="6">卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>血液透析</td>
									<td>&nbsp;</td>
									<td>次</td>
									<td>1</td>
									<td>300.00</td>
									<td>300.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>2</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7">药品</option>
											<option value="2">检查</option>
											<option value="6">卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>静脉注射</td>
									<td>&nbsp;</td>
									<td>次</td>
									<td>1</td>
									<td>30.00</td>
									<td>30.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>3</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7" selected>药品</option>
											<option value="2">检查</option>
											<option value="6">卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>阿法骨软胶囊</td>
									<td>0.26ug*20s</td>
									<td>盒</td>
									<td>1</td>
									<td>13.00</td>
									<td>13.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>4</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7" selected>药品</option>
											<option value="2">检查</option>
											<option value="6">卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>奥美拉唑肠溶胶囊</td>
									<td>20mg*14s</td>
									<td>盒</td>
									<td>1</td>
									<td>18.00</td>
									<td>18.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>5</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7" selected>药品</option>
											<option value="2">检查</option>
											<option value="6">卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>阿莫西林胶囊  </td>
									<td>0.25g*24s</td>
									<td>盒</td>
									<td>1</td>
									<td>28.00</td>
									<td>28.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>6</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7">药品</option>
											<option value="2">检查</option>
											<option value="6" selected>卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>一次性真空采血管（普通管）</td>
									<td>&nbsp;</td>
									<td>件</td>
									<td>1</td>
									<td>28.00</td>
									<td>28.00</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>7</td>
									<td>
										<select size="1">
											<option value="1">治疗</option>
											<option value="7">药品</option>
											<option value="2">检查</option>
											<option value="6" selected>卫材</option>
											<option value="5">化验</option>
											<option value="3">输氧</option>
											<option value="4">手术</option>
										</select>
									</td>
									<td>肝素帽</td>
									<td>&nbsp;</td>
									<td>件</td>
									<td>1</td>
									<td>28.00</td>
									<td>28.00</td>
									<td>&nbsp;</td>
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
                    