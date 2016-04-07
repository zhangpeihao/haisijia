<%@page import="com.haisijia.model.JspParamsVo"%>
<%@page import="com.haisijia.yhis.model.LoginModel"%>
<%
LoginModel loginModel = (LoginModel)request.getAttribute("model");
JspParamsVo jspParamsVo = loginModel.getJspParamsVo();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>云HIS---系统登录页面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="css/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="css/themes/default.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="css/responsive.css" >
	
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- JQUERY UI-->
	<link rel="stylesheet" type="text/css" href="js/jquery-ui-1.10.3.custom/css/custom-theme/jquery-ui-1.10.3.custom.min.css" />
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	<!-- BOOTSTRAP SWITCH -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-switch/bootstrap-switch.min.css" />
	<!-- HUBSPOT MESSENGER -->
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-spinner.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-air.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-block.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-flat.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-future.min.css" />
	<link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-ice.min.css" />
	<!-- MAGIC SUGGEST -->
	<link rel="stylesheet" type="text/css" href="js/magic-suggest/magicsuggest-1.3.1-min.css" />
	<!-- DATE PICKER -->
	<link rel="stylesheet" type="text/css" href="js/datepicker/themes/default.min.css" />
	<link rel="stylesheet" type="text/css" href="js/datepicker/themes/default.date.min.css" />
	<link rel="stylesheet" type="text/css" href="js/datepicker/themes/default.time.min.css" />
	<!-- COLOR PICKER -->
	<link rel="stylesheet" type="text/css" href="js/colorpicker/css/colorpicker.min.css" />
	<!-- FONTS -->
	<!-- <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'> -->
    <link href='css/app_font.css' rel='stylesheet' type='text/css'>
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="js/jquery/jquery-2.0.3.min.js"></script>
	<!-- JQUERY UI-->
	<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="bootstrap-dist/js/bootstrap.min.js"></script>
	<!-- 本工程工具 -->
	<script src="js/app_util.js"></script>
</head>
<body>
	<!-- PAGE -->
	<section id="page">
			<!-- HEADER -->
			<header>
				<!-- NAV-BAR -->
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div id="logo">
								<a href="index.php"><img src="images/logo/logo-alt.png" height="40" alt="logo name" /></a>
							</div>
						</div>
					</div>
				</div>
				<!--/NAV-BAR -->
			</header>
			<!--/HEADER -->
			<!-- LOGIN -->
			<section id="login" class="visible">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">登录</h2>
								<div class="divide-40"></div>
								<form role="form">
								  <div class="form-group">
									<label for="loginName">邮件地址</label>
									<i class="fa fa-envelope"></i>
									<input type="email" class="form-control" style="padding-top: 5px;" id="loginName" >
								  </div>
								  <div class="form-group"> 
									<label for="loginPwd">密码</label>
									<i class="fa fa-lock"></i>
									<input id="loginPwd" type="password" class="form-control" style="padding-top: 5px;" id="loingPwd" >
								  </div>
                                    <div class="checkbox" style="margin-left: 0px; padding-left: 0px;">
                                        <input id="rememberMe" type="checkbox" style="text-align: left; width: 30px; padding: 0px !important; margin: 0px;">
                                        <label style="position: relative; top: -5px;">记住我</label>
                                    </div>
								  <div class="form-actions">
									<button type="submit" id="loginBtn" class="btn btn-danger">登录</button>
								  </div>
								</form>
								<!-- SOCIAL LOGIN -->
								<div class="divide-20"></div>
								<div class="center">
									<strong>使用第三方社交平台账户登录</strong>
								</div>
								<div class="divide-20"></div>
								<div class="social-login center">
									<a class="btn btn-primary btn-lg">
										<i class="fa fa-facebook"></i>
									</a>
									<a class="btn btn-info btn-lg">
										<i class="fa fa-twitter"></i>
									</a>
									<a class="btn btn-danger btn-lg">
										<i class="fa fa-google-plus"></i>
									</a>
								</div>
								<!-- /SOCIAL LOGIN -->
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('forgot');return false;">忘记密码？</a> <br>
									还没有测序吧账户？ <a href="#" onclick="swapScreen('register');return false;">马上注册！</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/LOGIN -->
			<!-- REGISTER -->
			<section id="register">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">注册</h2>
								<div class="divide-40"></div>
								<form role="form">
								  <div class="form-group">
									<label for="userName">姓名</label>
									<i class="fa fa-font"></i>
									<input type="text" class="form-control" style="padding-top: 5px;" id="userName" >
								  </div>
								  <div class="form-group">
									<label for="nickName">昵称</label>
									<i class="fa fa-user"></i>
									<input type="text" class="form-control" style="padding-top: 5px;" id="nickName" >
								  </div>
								  <div class="form-group">
									<label for="loginNameReg">邮件</label>
									<i class="fa fa-envelope"></i>
									<input type="email" class="form-control" style="padding-top: 5px;" id="loginNameReg" >
								  </div>
								  <div class="form-group"> 
									<label for="loginPwdReg">密码</label>
									<i class="fa fa-lock"></i>
									<input type="password" class="form-control" style="padding-top: 5px;" id="loginPwdReg" >
								  </div>
								  <div class="form-group"> 
									<label for="loginPwdRegRepeat">重复密码</label>
									<i class="fa fa-check-square-o"></i>
									<input type="password" class="form-control" style="padding-top: 5px;" id="loginPwdRegRepeat" >
								  </div>
								  <div class="form-group"> 
									<label for="loginPwdRegRepeat">头像</label>
									<i class="fa fa-check-square-o"></i>
									<input type="file" class="form-control" placeholder="产品图片"  name="files" id="uploadFile" /> 
                                    <span style="color: red;">(如果不能弹出文件选择框请刷新一下网页)</span>
                                    <input type="hidden" class="form-control" style="padding-top: 5px;" name="userImage" id="userImage" value="upload/avatar/female_100x100.jpg" />
                                    <div id="showimg"><img src="upload/avatar/female_100x100.jpg" style="width: 100px; height: 100px;" /></div>     
								  </div>
                                  
                                  
                                  
                                    <div class="checkbox" style="margin-left: 0px; padding-left: 0px;">
                                        <input id="agreeBtn" type="checkbox" style="text-align: left; width: 30px; padding: 0px !important; margin: 0px;">
                                        <label style="position: relative; top: -5px;">我同意<a href="#">服务使用条款</a> 和 <a href="#">隐私政策</a></label>
                                    </div>
                                  
								  <div class="form-actions">                                    
                                    <button type="submit" id="registerBtn" class="btn btn-success">注册</button>
								  </div>
								</form>
                                
                                
								<!-- SOCIAL REGISTER -->
								<div class="divide-20"></div>
								<div class="center">
									<strong>或者使用第三方社交平台账户</strong>
								</div>
								<div class="divide-20"></div>
								<div class="social-login center">
									<a class="btn btn-primary btn-lg">
										<i class="fa fa-facebook"></i>
									</a>
									<a class="btn btn-info btn-lg">
										<i class="fa fa-twitter"></i>
									</a>
									<a class="btn btn-danger btn-lg">
										<i class="fa fa-google-plus"></i>
									</a>
								</div>
								<!-- /SOCIAL REGISTER -->
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('login');return false;">返回登录页面</a> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/REGISTER -->
			<!-- FORGOT PASSWORD -->
			<section id="forgot">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">重置密码</h2>
								<div class="divide-40"></div>
								<form role="form">
								  <div class="form-group">
									<label for="exampleInputEmail1">输入你的邮件</label>
									<i class="fa fa-envelope"></i>
									<input type="email" class="form-control" id="exampleInputEmail1" >
								  </div>
								  <div class="form-actions">
									<button type="submit" class="btn btn-info">给我发送重置指导信息</button>
								  </div>
								</form>
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('login');return false;">返回登录页面</a> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- FORGOT PASSWORD -->
	</section>
	<!--/PAGE -->
    
    
﻿
                                                            
<script src="js/jquery.form.js"></script>
<script type="text/javascript">
$(function () {
	var bar = $('.bar');
	var percent = $('.percent');
	var showimg = $('#showimg');
	var progress = $(".progress");
	var files = $(".files");
	var btn = $(".btn span");
	$("#uploadFile").wrap("<form id='myupload' action='index.php?f=c_file_uploader&c=CFileUploader&m=uploadFile&fileType=18' method='post' enctype='multipart/form-data'></form>");
    $("#uploadFile").change(function(){
		$("#myupload").ajaxSubmit({
			dataType:  'json',
			beforeSend: function() {
    		},
    		uploadProgress: function(event, position, total, percentComplete) {
    		},
			success: function(data) {
				var img = data.files[0].url;
                $("#userImage").val(img);
				showimg.html("<img src='"+img+"' style='width: 100px; height:100px;' />");
			},
			error:function(xhr){
			}
		});
	});
	
	/*$(".delimg").live('click',function(){
		var pic = $(this).attr("rel");
		$.post("action.php?act=delimg",{imagename:pic},function(msg){
			if(msg==1){
				files.html("删除成功.");
				showimg.empty();
				progress.hide();
			}else{
				alert(msg);
			}
		});
	});*/
});
</script>
		
	<!-- DATE RANGE PICKER -->
	<script src="js/bootstrap-daterangepicker/moment.min.js"></script>
	
	<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js">
    </script><script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- BOOTSTRAP SWITCH -->
	<script type="text/javascript" src="js/bootstrap-switch/bootstrap-switch.min.js"></script>
	<!-- BOOTBOX -->
	<script type="text/javascript" src="js/bootbox/bootbox.min.js"></script>
	<!-- HUBSPOT MESSENGER -->
	<script type="text/javascript" src="js/hubspot-messenger/js/messenger.min.js"></script>
	<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-flat.js"></script>
	<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-future.js"></script>
	<!-- MAGIC SUGGEST -->
	<script type="text/javascript" src="js/magic-suggest/magicsuggest-1.3.1-min.js"></script>
	<!-- TIMEAGO -->
	<script type="text/javascript" src="js/timeago/jquery.timeago.min.js"></script>
	<!-- DATE PICKER -->
	<script type="text/javascript" src="js/datepicker/picker.js"></script>
	<script type="text/javascript" src="js/datepicker/picker.date.js"></script>
	<script type="text/javascript" src="js/datepicker/picker.time.js"></script>
	<!-- COLOR PICKER -->
	<script type="text/javascript" src="js/colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<!-- RATY -->
	<script type="text/javascript" src="js/jquery-raty/jquery.raty.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="js/script.js"></script>
	
    <script type="text/javascript">
    $(document).ready(function() {
        $("#registerBtn").bind("click", registerUser);     
        $("#loginBtn").bind("click", loginUser);
    });
    </script>
    
	<script>
		jQuery(document).ready(function() {	
			App.setPage("login");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#'+id).addClass('visible animated fadeInUp');
		}
	</script>
    

<input type="text" value="<%=request.getAttribute("originUrl")%>" />  
<script type="text/javascript">
var g_originUrl = "<%=request.getAttribute("originUrl")%>";

function registerUser() {
    var userName = $("#userName").val();
    var nickName = $("#nickName").val();
    var loginName = $("#loginNameReg").val();
    var loginPwdReg = $("#loginPwdReg").val();
    var loginPwdRegRepeat = $("#loginPwdRegRepeat").val();
    var userImage = $("#userImage").val();
    if (loginPwdReg != loginPwdRegRepeat) {
        alert("两次输入的密码不一致，请重新输入！");
        return ;
    }
    var reqUrl = "index.php?f=c_user&c=CUser&m=registerUserAjax";
    var json = new Object();
    json.userName = userName;
    json.nickName = nickName;
    json.loginName = loginName;
    json.loginPwd = loginPwdReg;
    json.userImage = userImage;
    $.ajax({
        url: reqUrl,
        type: 'POST',
        data: {
            jsonReq: JSON.stringify(json)
        },
        dataType: 'json',
        success: onRegisterUserOk,
        error: onRegisterUserError
    });
    return false;
}
function onRegisterUserOk(json) {
    //alert(JSON.stringify(json));
    var rst = confirm("您是否希望我们记住您？（这样您在两周内就可以不用登录直接访问！）");
    var rememberMode = 0;
    if (rst) {
        rememberMode = 1;
    }
    setCookieAjax(json.userId, rememberMode);
}
function onRegisterUserError(msg) {
    alert("注册用户失败：" + msg.responseText + "！");
}


function setCookieAjax(userId, rememberMode) {
    var reqUrl = "ajax?cmd=setCookieAjax&userId=" + userId + "&rememberMode=" + rememberMode;
    $.ajax({
        url: reqUrl,
        type: 'GET',
        dataType: 'json',
        success: onSetCookieAjaxOk,
        error: onSetCookieAjaxError
    });
}
function onSetCookieAjaxOk(json) {
    window.location.href = g_originUrl;
}
function onSetCookieAjaxError(msg) {
    alert("设置Cookie失败：" + msg.responseText + "！");
    window.location.href = g_originUrl;
}

function loginUser() {
    var loginName = $("#loginName").val();
    var loginPwd = $("#loginPwd").val();
    if ("" == loginName || "" == loginPwd) {
        alert("登录名、密码不能为空，请重新输入！");
        return ;
    }
    var reqUrl = "ajax?cmd=loginUserAjax&loginName=" + loginName + "&loginPwd=" + loginPwd;
    $.ajax({
        url: reqUrl,
        type: 'GET',
        dataType: 'json',
        success: onLoginUserAjaxOk,
        error: onLoginUserAjaxError
    });
    return false;
}
function onLoginUserAjaxOk(json) {
    var userId = json.userId;
    var rememberMe = 0;
    if ($("#rememberMe").prop("checked")) {
        rememberMe = 1;
    }
    if (userId <= 0) {
        alert("我们无法找到您提供的用户名密码所对应的用户，请联系系统管理员！");
        return;
    }
    setCookieAjax(userId, rememberMe);
}
function onLoginUserAjaxError(msg) {
    alert("登录失败：" + msg.responseText + "！");
}

</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>