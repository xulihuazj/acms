<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>登录相关问题 | 门禁管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" sizes="157x157" />
<!-- Vendor CSS-->
<link href="${path }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path }/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path }/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<!-- Theme CSS -->
<link href="${path }/assets/css/jquery.mmenu.css" rel="stylesheet" />
<!-- Page CSS -->
<link href="${path }/assets/css/style.css" rel="stylesheet" />
<link href="${path }/assets/css/add-ons.min.css" rel="stylesheet" />
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
			<!-- Sidebar -->
			<%@ include file="/page-sidebar.jsp"%>
			<!-- End Sidebar -->
			<!-- Main Page -->
			<div class="main ">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="${path }/index.do"><i class="icon fa fa-home"></i>我的管理中心</a>
							</li>
							<li>
								<a><i class="fa fa-send-o"></i>系统入门指南</a>
							</li>
							<li class="active">
								<a href="${path }/help/loginRelate.do"><i class="icon fa fa-exclamation-circle">登录相关问题</i></a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>系统入门指南</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="row">
					<div class="col-md-12">
						<div class="toggle" data-plugin-toggle>
							<div class="toggle">
								<label>登录系统时需要注意些什么?</label>
								<div class="toggle-content">
									<p>使用本系统前，请检查应用环境的安全性，防止非法入侵！</p>
									</p>
								</div>
							</div>
							<div class="toggle">
								<label>登录密码忘记时，我该如何重新获取密码?</label>
								<div class="toggle-content">
									<p>1:如果您已经登录系统，可以通过系统修改密码选项来更改密码。</p>
									<p>2:如果您未登录系统，可以通过联系系统超级管理员获取更改的密码。</p>
								</div>
							</div>
							<div class="toggle">
								<label>登录系统时有时发生异常时，我该如何处理?</label>
								<div class="toggle-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius.</p>
								</div>
							</div>
							<div class="toggle">
								<label>我想记住密码，下次自动登录如何处理?</label>
								<div class="toggle-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere
										porta.</p>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->
			<!-- Footer -->
			<%@ include file="/page-footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>
	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path }/assets/vendor/js/pace.min.js"></script>
	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path }/assets/plugins/raphael/js/raphael.min.js"></script>
	<script src="${path }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
	<!-- Theme JS -->
	<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path }/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path }/assets/js/pages/ui-elements.js"></script>
</body>
</html>