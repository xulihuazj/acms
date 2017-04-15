<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>学生门禁管理系统</title>
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
						</ol>
					</div>
					<div class="pull-right">
						<h2>管理中心</h2>
					</div>
				</div>
				<!-- End 面包屑 -->
				
				<div class="clearfix">
					<div class="panel panel-default bk-bg-white">
						<div class="panel-heading bk-bg-white">
							<h6>
								<i class="fa fa-indent red"></i>查询条件
							</h6>
							<div class="panel-actions">
								<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a> <a href="#" class="btn-close"><i
									class="fa fa-times"></i></a>
							</div>
						</div>
						<div class="panel-body panel-body bk-bg-white bk-padding-top-30 bk-padding-bottom-20">
							<!-- 请求查询 -->
							<form action="${base}/log/queryLogList.do" method="post" class="form-inline form-horizontal form-bordered">
								<div class="form-group">
									 <!-- <label class="lable_info" for="keyWord" style="font-size: 15px;">关键字：</label> -->
									 <span class="lable_info" for="keyWord" style="font-size: 15px;">关键字：</span>
									<input type="" id="keyWord" name="keyWord" class="form-control" placeholder="请输入关键字" style="width: 150px;" />
								</div>
								<div class="form-group" style="width: 350px;">
									<label class="col-md-3 control-label" style="width: 80px;font-size: 15px;padding-right: 0px;">日期：</label>
									<div class="col-md-9" style="padding-left: 0px;">
										<div class="input-daterange input-group" data-plugin-datepicker >
											<span class="input-group-addon"> <i class="fa fa-calendar"></i></span>
										   	 	<input type="" class="form-control"  style="width: 90px" name="startTime"/> 
											<span class="input-group-addon">to</span> 
												<input type="" class="form-control" style="width: 90px" name="endTime" />
										</div>
									</div>
								</div>
								<div class="form-group">
										<label class="col-md-4 control-label" for="select"  style="padding-right: 0px;font-size: 15px;">类型：</label>
										<div class="col-md-2" style="padding-left: 0px;font-size: 15px;">
											<select id="select" name="logType" style="height: 34px;"
												class="form-control " size="1"  data-width="164" data-height="28">
												<option value="0">请选择日志类型</option>
												<option value="1">登录退出</option>
												<option value="2">操作日志</option>
												<option value="3">运行日志</option>
											</select>
										</div>
									</div>
								<div class="form-group" style="padding-right: 10px;">
									<div >
										<button class="btn btn-info"  type="submit" >查询</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- 表单数据 -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>日志信息
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a> 
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-default">
									<thead>
										<tr>
											<th style="width: 5%;min-width:50px;"><span>序号</span></th>
											<th style="width: 7%;min-width:100px;"><span>日志类型</span></th>
											<th style="width: 12%;min-width:180px;"><span>日志时间</span></th>
											<th style="width: 7%;min-width:100px;"><span>操作者</span></th>
											<th width=30%><span>日志内容</span></th>
										</tr>
									</thead>
									<!-- 在此处加循环 -->
									<tbody>
										<tr class="gradeX">
											<td>1</td>
											<td>登录退出</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">4</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeC">
											<td>2</td>
											<td>登录退出</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">5</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
											<td>3</td>
											<td>登录退出</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">5.5</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>4</td>
											<td>登录退出</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">6</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>5</td>
											<td>操作日志</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>6</td>
											<td>登录退出</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">6</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>7</td>
											<td>运行日志</td>
											<td>2017-04-15</td>
											<td class="center hidden-phone">1.7</td>
											<td class="center hidden-phone">A</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- End Main Page -->

				<!-- START 底部(隐藏的内容栏目) -->
				<%@ include file="/page-footer.jsp" %>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
		<!--/container-->
	</div>

		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script><!-- jquery过渡插件 -->
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>
		<script src="assets/vendor/js/pace.min.js"></script><!-- 进度条组件 -->

		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
		<script src="assets/plugins/moment/js/moment.min.js"></script>
		<script src="assets/plugins/fullcalendar/js/fullcalendar.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
		<script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
		<script src="assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/chart-master/js/Chart.js"></script>
		<script src="assets/plugins/jqvmap/jquery.vmap.js"></script>
		<script src="assets/plugins/jqvmap/data/jquery.vmap.sampledata.js"></script>
		<script src="assets/plugins/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>
		<script src="assets/plugins/jquery/js/respond.min.js"></script>

		<!-- Theme JS -->
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>

		<!-- Pages JS -->
		<script src="assets/js/pages/table-advanced.js"></script>
		<script src="assets/js/pages/index.js"></script>
		<script src="assets/js/pages/common.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#zlight-nav').zlightMenu();
			});
			$("#item").hover(function() {
				$(this).addClass("layer");
			}, function() {
				$(this).removeClass("layer");
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