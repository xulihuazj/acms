<%@ page language="java" errorPage="/404.jsp" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/view/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="renderer" content="webkit">
<title>登录门禁系统</title>
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" sizes="157x157" />
<link href="./login_files/bootstrap.css" rel="stylesheet">
<link href="./login_files/login.css" rel="stylesheet">
</head>
<body>
	<div class="wrap">
		<div class="header">
			<img src="./login_files/logo.png" class="img-responsive"
				alt="Responsive image">
		</div>
		<div class="container">
			<div class="site-login">
				<div class="row">
					<div class="col-lg-5 login">
						<h3 class="" style="padding-left: 105px;">登录管理平台</h3>
						<form id="login-form" class="form-horizontal"
							action="${path}/login.do" method="post">
							<input type="hidden" name="_csrf"
								value="V3FJQVl4OTE9GHA0aD96YRkJDC0VPRRaFRo8IBIeU2kkKCF5KzUNUg==">
							<div class="form-group field-loginform-username required">
								<label class="col-lg-2 control-label" for="loginform-username">账号</label>
								<div class="col-lg-6 ">
									<input type="text" id="loginUsername" class="form-control" autocomplete="off"
										name="loginUsername" placeholder="请输入您的账号">
								</div>
								<div class="col-lg-4 ">
									<div class="help-block"><span id="loginUsernameErr" style="color: #ff3333 !important;font-size: 14px !important;">${message1}</span></div>
								</div>
							</div>
							<div class="form-group field-loginform-password required">
								<label class="col-lg-2 control-label" for="loginform-password">密码</label>
								<div class="col-lg-6 ">
									<input type="password" id="loginPassword" class="form-control"  autocomplete="off"
										name="loginPassword" placeholder="请输入您的密码">
								</div>
								<div class="col-lg-4 ">
									<div class="help-block"><span id="loginPasswordErr" style="color: #ff3333 !important;font-size: 14px !important;">${message2}</span></div>
								</div>
							</div>
							<div class="form-group field-loginform-verifycode required">
								<label class="col-lg-2 control-label" for="loginform-verifycode">验证码</label>
								<div class="col-lg-10 ">
									<div class="row">
										<div class="col-lg-offset-1 col-lg-7"
											style="margin-left: -3.667%; width: 64.33%;">
											<input type="text" id="loginVerifycode" class="form-control" autocomplete="off"
												name="loginVerifycode" placeholder="请输入正确验证码">
										</div>
										<div class="col-lg-4 ">
												<img id="validationCode" alt="验证码图片" title="验证码图片" src="${path }/validationCode.do" onclick="refreshCode(this);" />  
										</div>
									</div>
								</div>
								<div class="col-lg-8 " style="height: 25px; text-align: center;">
									<div class="help-block"><span  value="${message}" id="loginVerifycodeErr" style="color: #ff3333 !important;font-size: 14px !important;">${message3}</div>
								</div>
								<div class="col-lg-4 " style="height: 25px; text-align: center;">
									<div class="help-block"><span id="loginVerifycodeErr" style="color: #ff3333 !important;font-size: 14px !important;"><a id="aRecode" href="javascript:void(0);" onclick="refreshCode()">点击换一张</a></div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-1">
									<button type="submit" class="btn btn-lg btn-block btn-success" id="loginBtn" disabled
										name="login-button">登
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</button>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-7 notice">
						<p class="section">欢迎登录门禁管理平台</p>
						<p class="section">致力于打造稳定、安全、可靠的门禁系统！</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./login_files/jquery.js"></script>
	<script src="./login_files/yii.js"></script>
	<script src="./login_files/yii.validation.js"></script>
	<script src="./login_files/yii.captcha.js"></script>
	<script src="./login_files/yii.activeForm.js"></script>
	<script src="./login_files/yii.gridView.js"></script>
	<script src="./login_files/bootstrap.js"></script>
	<!--[if lte IE 9]>
<script src="/js/respond.js"></script>
<![endif]-->
	<!--[if lte IE 9]>
<script src="/js/html5.js"></script>
<![endif]-->
	<script type="text/javascript">
/**
 * Created by 徐礼华  on 2017/2/14.
 * 首页登陆输入验证
 */
 $(function(){
		
 });
 /** 
  * 刷新验证码 
  * @param imgObj 验证码Img元素 
  */  
 function refreshCode(imgObj) {  
     if (!imgObj) {  
         imgObj = document.getElementById("validationCode");  
     }  
     var index = imgObj.src.indexOf("?");  
     if(index != -1) {  
         var url = imgObj.src.substring(0,index + 1);  
         imgObj.src = url + Math.random();  
     } else {  
         imgObj.src = imgObj.src + "?" + Math.random();  
     }  
 }  
 
   //进入页面账号输入框自动聚焦
$("#loginUsername").focus();
//判断保存按钮是否可以点击
function isBtnDisabled(){
    if($("#loginUsername").val().length > 0 && $("#loginPassword").val().length > 0 && $("#loginVerifycode").val().length > 0){
        $("#loginBtn").attr("disabled",false);
    }else{
        $("#loginBtn").attr("disabled",true);
    }
}
//账号输入框keyup事件
$("#loginUsername").keyup(function(){
    isBtnDisabled();
});
//密码输入框keyup事件
$("#loginPassword").keyup(function(){
    isBtnDisabled();
});
//校验码输入框keyup事件
$("#loginVerifycode").keyup(function(){
    isBtnDisabled();
});
//账号输入框失去焦点事件
$("#loginUsername").focusout(function(){
    if($("#loginUsername").val().length <= 0){
        $("#loginUsernameErr").html("账号不能为空");
    }else{
        $("#loginUsernameErr").html("");
    }
});
//密码输入框失去焦点事件
$("#loginPassword").focusout(function(){
    if($("#loginPassword").val().length <= 0){
        $("#loginPasswordErr").html("密码不能为空");
    }else{
        $("#loginPasswordErr").html("");
    }
});
//校验码输入框keyup事件
$("#loginVerifycode").focusout(function(){
    if($("#loginVerifycode").val().length <= 0){
        $("#loginVerifycodeErr").html("验证码不能为空");
    }else{
        $("#loginVerifycodeErr").html("");
    }
});
$("#loginBtn").submit();
</script>

	<footer class="footer">
		<div class="container">
			<p class="text-center">
				© Copyright Graduation project-2017.06 @Powered by xulihua 
			</p>
		</div>
	</footer>
</body>
</html>