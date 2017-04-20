<!-- 数据统计 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
<link href="${path }/assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />
<!-- Theme CSS -->
<link href="${path }/assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="${path }/assets/css/style.css" rel="stylesheet" />
<link href="${path }/assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->
<script src="${path }/assets/plugins/modernizr/js/modernizr.js"></script>
<script src="${path }/assets/vendor/js/jquery.min.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<!-- Start: Header -->
	<%@include file="/page-header.jsp"%>
	<!-- End: Header -->
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- START 左侧导航栏 -->
			<%@include file="/page-sidebar.jsp"%>
			<!-- END 左侧导航栏 -->
			<!-- Main Page(主要内容) -->
			<div class="main ">
				<!-- START 面包屑-->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="${path }/index.do"> <i class="icon fa fa-home"></i> 我的管理中心
								</a>
							</li>
							<li>
								<a> <i class="icon fa fa-retweet"></i> 数据分析管理
								</a>
							</li>
							<li>
								<a href="${path}/data/dataHandleList.do"> <i class="icon fa  fa-refresh "></i>统计分析
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>数据分析管理</h2>
					</div>
				</div>
				<!-- End 面包屑 -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-random red"></i>数据分析
								</h6>
							</div>
							<div class="panel-body col-sm-6">
								<div id="piechart" style="height: 250px"></div>
								<p style="text-align: center; font-size:15px;">
								人员信息汇总
								</p>
							</div>
							<div class="panel-body col-sm-6">
								<div id="donutchart" style="height: 250px;"></div>
								<p style="text-align: center; font-size:15px;">
								人员信息汇总
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-body">
								<div id="sincos" class="center" style="height: 300px;"></div>
								<p id="hoverdata" style="text-align: center; font-size:20px;">
									Mouse position at (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- End Main Page -->
				<!-- START 底部(隐藏的内容栏目) -->
				<%@include file="/page-footer.jsp"%>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
	</div>
	<div id="addUserModal"></div>

	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<!-- jquery过渡插件 -->
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path }/assets/vendor/skycons/js/skycons.js"></script>
	<script src="${path }/assets/vendor/js/pace.min.js"></script>
	<!-- 进度条组件 -->
	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script src="${path }/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${path }/assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="${path }/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<script src="${path }/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path }/assets/plugins/fullcalendar/js/fullcalendar.js"></script>
	<script src="${path }/assets/plugins/flot/js/jquery.flot.min.js"></script>
	<script src="${path }/assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
	<script src="${path }/assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
	<script src="${path }/assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
	<script src="${path }/assets/plugins/flot/js/jquery.flot.time.min.js"></script>
	<script src="${path }/assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
	<!-- Theme JS -->
	<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path }/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path }/assets/js/pages/charts-flot_statistics.js"></script>
	<style type="text/css">
</style>
</body>
</html>