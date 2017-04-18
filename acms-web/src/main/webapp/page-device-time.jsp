<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>设备管理 | 门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Vendor CSS-->
<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="${path}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path}/assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="${path}/assets/plugins/jquery-datatables-bs3/css/datatables.css" rel="stylesheet" />

<!-- Theme CSS -->
<link href="${path}/assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="${path}/assets/css/style.css" rel="stylesheet" />
<link href="${path}/assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->
<!-- Head Libs -->
<script src="${path}/assets/plugins/modernizr/js/modernizr.js"></script>
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

	<!-- Start: 内容 -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<%@ include file="/page-sidebar.jsp"%>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main sidebar-minified">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="homepage.jsp"><i class="icon fa fa-home"></i> 我的管理中心</a>
							</li>
							<li>
								<a><i class="fa fa-list"></i>设备管理设置</a>
							</li>
							<li class="active">
								<i class="fa fa-tachometer"></i>时间组设置
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>设备管理设置</h2>
					</div>
				</div>
				<!-- End Page Header -->
					<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table"></i><span class="break"></span>时间组设置
								</h6>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered bootstrap-datatable datatable">
										<thead>
											<tr>
												<th>序号.</th>
												<th>启用时间</th>
												<th>停用时间</th>
												<th>当前状态</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										
										<c:forEach items="${deviceList}" var="deviceInfo">
											<tr>
												<td>${deviceInfo.id}</td>
												<td>${deviceInfo.activateTime}</td>
												<td>${deviceInfo.activateTime}</td>
												<td>正常</td>
												<td> <a class="btn btn-info" style="height: 44px" href="#"> <i
														class="fa fa-edit "></i>
												</a> </td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
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
	<!--/container-->

	<!-- 编辑人员弹出框 -->
	<div class="panel panel-default" style="display: block;" id="editPersonModal">
		<div class="panel-heading">
			<h6>
				<i class="fa fa-check-square-o"></i>Form
			</h6>
			<div class="panel-actions">
				<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a> <a href="#" class="btn-close"><i
					class="fa fa-times"></i></a>
			</div>
			<p>Modal with a form and buttons.</p>
		</div>
		<div class="panel-body">
			<a class="bk-margin-top-10 bk-margin-bottom-10 modal-with-form btn btn-default" href="#modalForm">Open Form</a>
			<!-- Modal Form -->
			<div id="modalForm" class="modal-block modal-block-primary mfp-hide">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">门禁时间设置</h2>
					</div>
					<div class="panel-body bk-noradius">
						<form id="savePerson_form" class="form-horizontal mb-lg" novalidate="novalidate">
							<div class="form-group">
								<label class="col-sm-3 control-label">门禁开始时间：</label>
								<div class="col-sm-9">
									<input type="email" name="perName" class="form-control" placeholder="" required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">门禁结束时间：</label>
								<div class="col-sm-9">
									<input type="email" name="cardId" class="form-control" placeholder="" required />
								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-md-12 text-right">
								<button class="btn btn-primary modal-confirm" id="confirmSave">确定</button>
								<button class="btn btn-default modal-dismiss" id="cancelSave">取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 确定弹出框 -->
	<div class="panel-body">
		<div id="decideStart" class="modal-block modal-header-color modal-block-primary mfp-hide">
			<div class="panel">
				<div class="panel-heading">
					<h2 class="panel-title">消息！</h2>
				</div>
				<div class="panel-body bk-noradius">
					<div class="modal-wrapper">
						<div class="modal-icon">
							<i class="fa fa-question-circle"></i>
						</div>
						<div class="modal-text" style="font-size: 20px;">
							<p>确定开启门禁时间?</p>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-md-12 text-right">
							<button class="btn btn-primary modal-confirm">确定</button>
							<button class="btn btn-default modal-dismiss">取消</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Vendor JS-->
	<script src="${path}/assets/vendor/js/jquery.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path}/assets/vendor/js/pace.min.js"></script>

	<!-- Plugins JS-->
	<script src="${path}/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path}/assets/plugins/select2/select2.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables-bs3/js/datatables.js"></script>
	<script src="${path}/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path}/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="${path}/assets/js/pages/ui-modals.js"></script>
	<script src="${path}/assets/js/common/page-device.js"></script>
	<!-- end: JavaScript-->
</body>

</html>