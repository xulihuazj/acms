<!-- 角色管理 -->
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
<link rel="stylesheet" href="${path }/assets/css/zlight.menu.css" media="screen">
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
								<a href="${path }/index.do"> <i class="icon fa fa-home"></i> 我的管理中心
								</a>
							</li>
							<li>
								<a><i class="fa fa-cog"></i>系统用户管理</a>
							</li>
							<li class="active">
								<a href="${path }/user/system/ajaxUserList.do"><i class="fa fa-users "></i>角色管理</a>
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

						<div class="panel panel-default bk-bg-white">

							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>角色管理
								</h6>
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
												<th>手机号</th>
												<th>备注</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
												<c:forEach items="${userList}" var="user">
													<tr>
														<td>${user.id}</td>
														<td>${user.userName}</td>
														<td>${user.type}</td>
														<td>${user.status}</td>
														<td>${user.mobile}</td>
														<td>${user.note}</td>
														<td>
															<span class="label label-success"><a onclick="" id="startRole" sytle="color: white">启用</a></span> <span
															class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span> <span
															class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span> <span
															class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
														</td>
													</tr>
									</c:forEach>
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
		<%@ include file="/page-footer.jsp"%>
	</div>

	<!-- start: JavaScript-->

	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script src="${path }/assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="${path }/assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>

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
</style>
</body>
<script type="text/javascript">
	
</script>

</html>