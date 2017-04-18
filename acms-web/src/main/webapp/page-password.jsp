<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>修改密码|学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon" href="${path }/assets/ico/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="${path }/assets/ico/apple-touch-icon.png" />
<!-- start: CSS file-->
<!-- Vendor CSS-->
<link href="${path }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path }/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path }/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
<link href="${path }/assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
<link href="${path }/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path }/assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
<link href="${path }/assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
<!-- Theme CSS -->
<link href="${path }/assets/css/jquery.mmenu.css" rel="stylesheet" />
<!-- Page CSS -->
<link href="${path }/assets/css/style.css" rel="stylesheet" />
<link href="${path }/assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->
<!-- Head Libs -->
<script src="${path }/assets/plugins/modernizr/js/modernizr.js"></script>
<script>
</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<!-- Start: Header -->
	<%@ include file="/page-header.jsp"%>
	<!-- End: Header -->
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- START 左侧导航栏 -->
			<%@ include file="/page-sidebar.jsp"%>
			<!-- END 左侧导航栏 -->
			<!-- Main Page(主要内容) -->
			<div class="main ">
				<!-- START 面包屑-->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="homepage.jsp"> <i class="icon fa fa-home"></i> 我的管理中心
								</a>
							</li>
							<li>
								<a> <i class="icon fa  fa-cog"></i> 系统用户管理
								</a>
							</li>
							<li>
								<a href="page-password.jsp"> <i class="icon fa  fa-share-square-o"></i> 修改密码
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>个人中心</h2>
					</div>
				</div>
				<!-- End 面包屑 -->

				<div class="section edit-password">
					<div class="container">
						<div style="width: 700px; margin: auto auto;">
							<div class="edit-warn">
								<span></span>修改当前已使用的登录密码
							</div>
							<form  id="resetForm" style="width: 400px; margin: auto;">
								<div class="form_row mb15">
									<span class="text-danger text-small" id="oldPwdErr"></span>
									<input type="password" id="oldPwd" class="width100" placeholder="请输入原密码" maxlength="16">
								</div>
								<div class="form-row">
									<span class="text-small"> 6-16位数字、字母（区分大小写） </span>
								</div>
								<div class="form_row mb15">
									<span class="text-danger text-small"></span>
									<input type="password" id="newPwd" class="width100" placeholder="请输入新密码" maxlength="16">
								</div>
								<div class="form_row mb15">
									<span class="text-danger text-small"></span>
									<input type="password" id="comfirePwd" class="width100" placeholder="请再次输入新密码" maxlength="16">
								</div>
								<div class="pt15 text-center">
									<button type="button" class="btn btn-primary go-next-btn width49" disabled id="saveBtn">修改</button>
									<button type="button" class="btn btn-primary go-next-btn width49" id="cancelBtn">取消</button>
								</div>
							</form>

						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h6>
									<i class="fa fa-check-square-o"></i>Bafdafessic
								</h6>
							</div>
							<div class="panel-body">
								<!-- Modal Basic -->
								<a
									class="bk-margin-top-10 bk-margin-bottom-10 modal-basic btn btn-default"
									href="#modalBasic">Basic</a>
								<div id="modalBasic" class="modal-block mfp-hide">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h2 class="panel-title">Are you sure?</h2>
										</div>
										<div class="panel-body bk-noradius">
											<div class="modal-wrapper">
												<div class="modal-text">
													<p>Are you sure that you want to delete this image?</p>
												</div>
											</div>
										</div>
										<div class="panel-footer">
											<div class="row">
												<div class="col-md-12 text-right">
													<button class="btn btn-info modal-confirm">Confirm</button>
													<button class="btn btn-default modal-dismiss">Cancel</button>
												</div>
											</div>
										</div>
									</div>
								</div></div></div></div></div>
				<!-- End Main Page -->

				<!-- START 底部(隐藏的内容栏目) -->
				<%@ include file="page-footer.jsp"%>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
		<!--/container-->

		<%@ include file="/page-footer.jsp"%>

		<!-- start: JavaScript-->

		<!-- Vendor JS-->
		<script src="${path }/assets/vendor/js/jquery.min.js"></script>
		<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${path }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${path }/assets/vendor/js/pace.min.js"></script>

		<!-- Plugins JS-->
		<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${path }/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
		<script src="${path }/assets/plugins/moment/js/moment.min.js"></script>
		<script src="${path }/assets/plugins/fullcalendar/js/fullcalendar.js"></script>

		<!-- Theme JS -->
		<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
		<script src="${path }/assets/js/core.min.js"></script>

		<!-- Pages JS -->
		<script src="${path }/assets/js/editPin.js"></script>
			<script src="${path }/assets/js/pages/ui-modals.js"></script>
		
		<script type="text/javascript">
			//密码修改校验事件
			$(function(){
				$("#saveBtn").click(function(){
					var oldPwd = $("#oldPwd").val();
					var newPwd = $('#newPwd').val();
					var comfirePwd = $('#comfirePwd').val();
					$.ajax({
						type: "POST",
						url: "${path}/user/system/modifyPsd.do",
						dataType: 'text',								
						data: "oldPwd="+ oldPwd + "&newPwd=" + newPwd + "&comfirePwd=" + comfirePwd,
						cache: true,
		                async: false,
						success: function(data){
							if(data.length>0){
							 var resultData = eval('(' + data + ')');
							 $("#oldPwdErr").html(resultData.message);
							}
						},
						error: function(){
							alert("系统错误!");
						}
					});
				});
			});
			
			
		</script>
		<style type="text/css">
.subitem {
	width: 300px;
	background: #fff;
	border: solid 1px #3299fd;
	border-left: none;
	font-family: "微软雅黑";
	position: absolute;
	left: 150px;
	_left: 228px;
	top: -100px;
	z-index: 99999;
	min-height: 60px;
	height: auto !important;
	height: 50px;
	padding: 5px 10px 15px 10px;
	position: absolute;
	display: block;
}
</style>
		<!-- end: JavaScript-->
</body>

</html>