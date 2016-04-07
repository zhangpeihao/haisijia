		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
					<div class="row">
							<div class="col-md-12">
								<!-- BOX-->
								<div class="box border blue">
									<div class="box-title">
										<h4>
											<i class="fa fa-bars"></i><a href="" style="color: white;">患者管理</a>>>
											<a href="main?cmd=showFollowupPatientNew&stmId=1&ssmId=55&stmId=1"  style="color: white;">患者添加</a>>>
											患者标签管理
										</h4>
										<div class="tools">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i>
											</a>
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
											<a href="javascript:;" class="collapse">
												<i class="fa fa-chevron-up"></i>
											</a>
											<a href="javascript:;" class="remove">
												<i class="fa fa-times"></i>
											</a>
										</div>
									</div>
									<div class="box-body left">
										已选择标签：
										<p id="selectedTags" class="btn-toolbar">
											<button id="txBtn" class="btn btn-xs btn-primary">血液透析</button>
											<button class="btn btn-xs btn-primary">CKD四期</button>
										</p>
										<br /><br /><br />备选标签：
										<p id="restTags" class="btn-toolbar">											
											<button id="skBtn" class="btn btn-xs btn-primary">肾科</button>
											<button class="btn btn-xs btn-primary">肾内科</button>
											<button class="btn btn-xs btn-primary">急性肾炎</button>
											<button class="btn btn-xs btn-primary">急进性肾炎</button>
											<button class="btn btn-xs btn-primary">慢性肾炎</button>
											<button class="btn btn-xs btn-primary">肾小球肾炎</button>
											<button class="btn btn-xs btn-primary">肾小管肾炎</button>
											<button class="btn btn-xs btn-primary">肾间质肾炎</button>
											<button class="btn btn-xs btn-primary">IgA肾炎</button>
											<button class="btn btn-xs btn-primary">免疫系统</button>
										</p>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
						<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				</div>
			
			</div>
		</div>

<script type="text/javascript">
$(document).ready(function () {
	$("#txBtn").bind("click", deselectTx);
	$("#skBtn").bind("click", selectSk);
});

function deselectTx() {
	var html = $("#restTags").html();
	html = "<button class=\"btn btn-xs btn-primary\">" + $("#txBtn").text() + "</button>" + html;
	$("#restTags").html(html);
	$("#txBtn").css("display", "none");
	$("#skBtn").bind("click", selectSk);
}

function selectSk() {
	var html = $("#selectedTags").html();
	html = "<button class=\"btn btn-xs btn-primary\">" + $("#skBtn").text() + "</button>" + html;
	$("#selectedTags").html(html);
	$("#skBtn").css("display", "none");
	$("#txBtn").bind("click", deselectTx);
}
</script>