<!-- 角色管理 --><!-- 数据统计 -->
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
	<%@ include file="/page-role.jsp" %>
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
				
				<div class="row">
					<div class="col-lg-12">
						<form id="#">
							<div class="overflowh">
								<div class="pull-left">
									<div class="form-group">
										<button type="button" class="btn btn-primary"  onclick="add()">添加</button>
									</div>
								</div>
								<div class="form-group pull-right">
									<input type="text" class="form-control inputw" name="searchKey" id="searchKey" reg="specialchar2"  placeholder="输入名称或创建者进行搜索" />
									<button type="button" class="btn btn-primary" id = "btn-search-down">
										<div class="btn-search">搜索</div>
									</button>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>管理员管理
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a> <a href="#" class="btn-close"><i
										class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>序号.</th>
												<th>角色名称</th>
												<th>角色类型</th>
												<th>角色状态</th>
												<th>备注</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>张三555</td>
												<td>超级管理员</td>
												<td>启用</td>
												<td>fdsafdsaefdae</td>
												<td>
													<span class="label label-success" onclick="" id="startover">启用</span>
													<span class="label label-danger" onclick="" id="deleteRole">删除</span>
													<span class="label label-warning" onclick="" id="stopRole">禁用</span>
													<span class="label label-default">编辑</span>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td>xuliha</td>
												<td>普通管理员</td>
												<td>启用</td>
												<td>fdsafefdsafe$</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">编辑</span>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>赵yibo</td>
												<td>普通管理员</td>
												<td>禁用</td>
												<td>fdasflkjlkgfgrdg$</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">编辑</span>
												</td>
											</tr>
											<tr>
												<td>4</td>
												<td>zhangjun33</td>
												<td>普通管理员</td>
												<td>启用</td>
												<td>gdj;lgsdf;jioj</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">编辑</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- End Main Page -->

				<!-- START 底部(隐藏的内容栏目) -->
				<div id="footer"></div>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
		<!--/container-->
		<%@ include file="/page-footer.jsp" %>
	</div>

		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/bootkit/js/bootkit.js"></script>
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