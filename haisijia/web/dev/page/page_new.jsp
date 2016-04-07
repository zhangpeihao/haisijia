		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
                    <div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>
                                            <a href="" style="color: white;">页面管理</a>»
                                            <a href="" style="color: white;">页面添加</a>
                                        </h4>
									</div>
									<div class="box-body">
										 <form class="form-horizontal " action="#">
											<div class="form-group">
												<label class="col-md-2 control-label">请求URL</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="cmdName" size="10" id="cmdName">
												</div>
												<label class="col-md-2 control-label">类名</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="className" size="10" id="className">
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">方法名</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="methodName" size="10" id="methodName">
												</div>
												<label class="col-md-2 control-label">页面模板</label>
												<div class="col-md-4">
													<select id="templateId" class="form-control">
													</select>
												</div>
											</div>	
											<div class="form-group">
												<label class="col-md-2 control-label">标题</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="title" size="10" id="title">
												</div>
												<label class="col-md-2 control-label">页头</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="header1" size="10" id="header1">
												</div>
											</div>		
											<div class="form-group">
												<label class="col-md-2 control-label">左侧</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="sidebar1" size="10" id="sidebar1">
												</div>
												<label class="col-md-2 control-label">主体</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="body1" size="10" id="body1">
												</div>
											</div>		
											<div class="form-group">
												<label class="col-md-2 control-label">页脚</label>
												<div class="col-md-4">
													<input class="form-control" type="text" name="footer1" size="10" id="footer1">
												</div>
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													&nbsp;
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">
													<button id="addBtn" type="button" class="btn btn-primary">添加</button>
                                                    <button id="cancelBtn" type="button" class="btn btn-primary">取消</button>
												</div>
												<label class="col-md-2 control-label">&nbsp;</label>
												<div class="col-md-4">&nbsp;
												</div>
											</div>	
										</form>
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
    // 查询页面模板内容
    getHtmlSelectDataBySql(fillTemplateIdList, 
			"select jsp_template_id as keyStr, " + 
			"jsp_template_file as valStr from t_jsp_template");
    $("#addBtn").bind("click", addDevPage);
	$("#cancelBtn").bind("click", onCancel);
});

/**
* 将内容显示到页面模板下拉列表框中
* 【闫涛 2016.01.18】初始版本
*/
function fillTemplateIdList(json) {
    setupHtmlSelect("templateId", json.recs, 2, true); // 1元素ID；2返回Json数据；3当前选中值；4是否有缺省值
}

/**
* 添加新页面
* 【闫涛 2016.03.18】初始版本
*/
function addDevPage() {
	var reqUrl = "ajax?cmd=addDevPageAjax&p=pc&v=0.0.1&h=1";
	// 取出所有页面元素
	var cmdName = $("#cmdName").val();
	if ("" == cmdName) {
		alert("请求URL不能为空");
		$("#cmdName").focus();
		return ;
	}
	var className = $("#className").val();
	var methodName = $("#methodName").val();
	var templateId = $("#templateId").val();
	var title = $("#title").val();
	var header1 = $("#header1").val();
	var sidebar1 = $("#sidebar1").val();
	var body1 = $("#body1").val();
	var footer1 = $("#footer1").val();
	// 生成请求对象
	var data = new Object();
	data.cmdName = cmdName;
	data.className = className;
	data.methodName = methodName;
	data.templateId = templateId;
	data.title = title;
	data.header1 = header1;
	data.sidebar1 = sidebar1;
	data.body1 = body1;
	data.footer1 = footer1;
    $.ajax({
        url: reqUrl,
        type: 'POST',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
            jsonReq: JSON.stringify(data)
        },
        dataType: 'json',
        success: onAddDevPageOk,
        error: onAddDevPageError
    });
}
function onAddDevPageOk(json) {
	if ("Ok" != json.status) {
		alert("添加患者信息失败！");
		return ;
	}	
	alert("添加患者信息成功！");
	window.location.href = "main?cmd=showPatientList";
}
function onAddDevPageError(msg) {
	alert("添加患者失败：" + msg.responseText + "！");
}

/**
* 返回页面列表界面
* 【闫涛 2016.03.18】初始版本
*/
function onCancel() {
	window.location.href = "main?cmd=showDevPageList";
}
</script>