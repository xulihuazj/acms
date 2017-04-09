<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>修改密码|学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Import google fonts -->
<!-- <link href='http://fonts.useso.com/css?family=Titillium+Web' rel='stylesheet' type='text/css'> -->
<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
<link href="assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/zlight.menu.css" media="screen">
<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->

<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
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
	<%@ include file="/page-header.jsp" %>
	<!-- End: Header -->

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- START 左侧导航栏 -->
			<%@ include file="/page-sidebar.jsp" %>
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
								<a href="#"> <i class="icon fa fa-home"></i> 系统设置
								</a>
							</li>
							<li>
								<a href="page-password.jsp"> <i class="icon fa fa-home"></i> 修改密码
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>个人中心</h2>
					</div>
				</div>
				<!-- End 面包屑 -->
				<div class="clearfix">

					<div class="section edit-password">
						<div class="container">
							<div style="width: 700px; margin: auto auto;">
								<div class="edit-warn">
									<span></span>修改当前已使用的登录密码
								</div>
								<form action="${base}/user/system/modifyPsd.do" style="width: 400px; margin: auto;" method="post">
									<div class="form_row mb15">
										<span class="text-danger text-small"></span>
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
				</div>
				<!-- End Main Page -->

				<!-- START 底部(隐藏的内容栏目) -->
				<div id="footer">
					<ul>
						<li>
							<div class="title">Memory</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-success" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</div>
							<div class="desc">4GB of 8GB</div>
						</li>
						<li>
							<div class="title">HDD</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-primary" role="progressbar" aria-valuenow="40"
										aria-valuemin="0" aria-valuemax="100" style="width: 40%;">40%</div>
								</div>
							</div>
							<div class="desc">250GB of 1TB</div>
						</li>
						<li>
							<div class="title">SSD</div>
							<div class="bar">
								<div class="progress light progress-sm  progress-striped active">
									<div class="progress-bar progress-squared progress-bar-warning" role="progressbar" aria-valuenow="70"
										aria-valuemin="0" aria-valuemax="100" style="width: 70%;">70%</div>
								</div>
							</div>
							<div class="desc">700GB of 1TB</div>
						</li>
						<li>
							<div class="copyright">
								<p class="text-muted text-right">
									Fire <i class="fa fa-coffee"></i> Collect from <a href="" title="" target="_blank"></a> - More Templates <a
										href="" target="_blank" title=""></a>
								</p>
							</div>
						</li>
					</ul>
				</div>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
		<!--/container-->

		<%@ include file="/page-footer.jsp" %>

		<!-- start: JavaScript-->

		<!-- Vendor JS-->
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>
		<script src="assets/vendor/js/pace.min.js"></script>

		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
		<script src="assets/plugins/moment/js/moment.min.js"></script>
		<script src="assets/plugins/fullcalendar/js/fullcalendar.js"></script>
		<script src="assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>
		<script src="assets/plugins/jquery/js/respond.min.js"></script>

		<!-- Theme JS -->
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>

		<!-- Pages JS -->
		<script src="assets/js/editPin.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#zlight-nav').zlightMenu();
			});
			$("#item").hover(function() {
				$(this).addClass("layer");
			}, function() {
				$(this).removeClass("layer");
			});
			//密码修改校验事件
			
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