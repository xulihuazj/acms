<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>门禁出入日志 | 学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon" href="${path }/assets/ico/favicon.ico" type="image/x-icon" />
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
<link rel="stylesheet" href="${path }/assets/css/zlight.menu.css" media="screen">
<link href="${path}/assets/plugins/jquery-datatables-bs3/css/datatables.css" rel="stylesheet" />

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
	<%@ include file="/page-header.jsp" %>
	<!-- End: Header -->

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- START 左侧导航栏 -->
			<%@include file="/page-sidebar.jsp" %>
			<!-- END 左侧导航栏 -->

			<!-- Main Page(主要内容) -->
			<div class="main sidebar-minified ">
				<!-- START 面包屑-->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="${path }/indx.do"> <i class="icon fa fa-home"></i> 我的管理中心
								</a>
							</li>
							<li>
								<a> <i class="icon fa fa-exchange"></i> 门禁出入日志
								</a>
							</li>
							<li>
								<a href="${path }/turnover/ajaxTurnoverList.do"> <i class="icon fa  fa-arrows-h "></i> 电气工程学院
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>门禁出入日志</h2>
					</div>
				</div>
				<!-- End 面包屑 -->
				
				<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>门禁出入日志
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped"
									id="datatable-default">
									<thead>
										<tr>
											<th>序号.</th>
											<th>设备地点</th>
											<th>人员出入</th>
											<th>出入时间</th>
											<th>所持卡号</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>1</td>
											<td>电气工程学院</td>
											<td>[朱岸峰]离开学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeC">
											<td>2</td>
											<td>电气工程学院</td>
											<td>[朱岸峰]进入学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
										<td>3</td>
											<td>电气工程学院</td>
											<td>[张军]进入学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
										<td>4</td>
											<td>电气工程学院</td>
											<td>[张军]进入学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
										<td>5</td>
											<td>电气工程学院</td>
											<td>[赵一博]离开学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
										<td>6</td>
											<td>电气工程学院</td>
											<td>[赵一博]进入学院</td>
											<td>Win 2k+ / OSX.3+</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
										<td>1</td>
											<td>电气工程学院</td>
											<td>[张军]离开学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
										<td>7</td>
											<td>电气工程学院</td>
											<td>[张军]进入学院</td>
											<td>2017-04-14</td>
											<td class="center hidden-phone">75439579437598</td>
											<td class="center hidden-phone">A</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div></div>
				<!-- START 底部(隐藏的内容栏目) -->
				<%@include file="/page-footer.jsp" %>
				<!-- End 底部(隐藏的内容栏目)-->
				</div>
		</div>
		<!--/container-->

		<!-- start: JavaScript-->

		<!-- Vendor JS-->
		<script src="${path }/assets/vendor/js/jquery.min.js"></script>
		<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Plugins JS-->
		<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${path }/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="${path }/assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="${path }/assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<!-- Theme JS -->
		<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
		<script src="${path }/assets/js/core.min.js"></script>

		<!-- Pages JS -->
		<script src="${path }/assets/js/pages/table-advanced.js"></script>
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
</body>
</html>