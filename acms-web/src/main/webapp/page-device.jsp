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
<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${path}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${path}/assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="${path}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path}/assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="${path}/assets/plugins/jquery-datatables-bs3/css/datatables.css"
	rel="stylesheet" />

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
	<%@ include file="${path}/page-header.jsp" %>
	<!-- End: Header -->

	<!-- Start: 内容 -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<%@ include file="${path}/page-sidebar.jsp" %>
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
								<a href="#"><i class="fa fa-table"></i>设备管理设置</a>
							</li>
							<li class="active">
								<i class="fa fa-thumbs-o-up"></i>设备连接设置
							</li>
						</ol>
					</div>
					<div class="pull-right"><h2>设备管理设置</h2></div>
				</div>
				<!-- End Page Header -->

				<div class="row">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>人员信息管理
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped mb-none"
									id="datatable-details">
									<thead>
										<tr>
											<th >序号.</th>
											<th >设备SN</th>
											<th >设备状态</th>
											<th >设备品牌</th>
											<th >设备型号</th>
											</tr>
									</thead>
									<tbody>
										<c:forEach items="${deviceList}" var="deviceInfo">
											<tr>
												<td>${deviceInfo.id}</td>
												<td>${deviceInfo.SN}</td>
												<td>${deviceInfo.status}</td>
												<td>${deviceInfo.deviceBrand}</td>
												<td>${deviceInfo.deviceModel}</td>
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

			<!-- Footer -->
			<%@ include file="${path}/page-footer.jsp" %>
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
						<h2 class="panel-title">编辑人员</h2>
					</div>
					<div class="panel-body bk-noradius">
						<form id="savePerson_form" class="form-horizontal mb-lg" novalidate="novalidate">
							<div class="form-group">
								<label class="col-sm-3 control-label">人员姓名：</label>
								<div class="col-sm-9">
									<input type="email" name="perName" class="form-control" placeholder="请输入人员姓名..." required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所持卡号：</label>
								<div class="col-sm-9">
									<input type="email" name="cardId" class="form-control" placeholder="请输入人员所持卡号..." required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">身份证号：</label>
								<div class="col-sm-9">
									<input type="url" name="perIdentificate" class="form-control" placeholder="请输入身份证号..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员类型：</label>
								<div class="col-sm-9">
									<input type="url" name="perType" class="form-control" placeholder="请选择人员类型..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员性别：</label>
								<div class="col-sm-9">
									<input type="url" name="perSex" class="form-control" placeholder="请选择人员性别..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员年龄：</label>
								<div class="col-sm-9">
									<input type="url" name="perAge" class="form-control" placeholder="请输入年龄..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">联系电话：</label>
								<div class="col-sm-9">
									<input type="url" name="perMobile" class="form-control" placeholder="请输入联系电话..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所属学院：</label>
								<div class="col-sm-9">
									<input type="url" name="perDepart" class="form-control" placeholder="请输入人员所属学院..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所属专业：</label>
								<div class="col-sm-9">
									<input type="url" name="perMajor" class="form-control" placeholder="请输入人员所属专业..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所属班级：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入人员所属班级..." />
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
							<p>确定启用该人员?</p>
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

	<div class="panel-body">
		<div id="decideStop" class="modal-block modal-header-color modal-block-warning mfp-hide">
			<div class="panel">
				<div class="panel-heading">
					<h2 class="panel-title">消息！</h2>
				</div>
				<div class="panel-body bk-noradius">
					<div class="modal-wrapper">
						<div class="modal-icon">
							<i class="fa fa-warning"></i>
						</div>
						<div class="modal-text" style="font-size: 20px;">
							<h4>警告：</h4>
							<p>确定禁用该人员？</p>
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

	<div class="panel-body">
		<div id="decideDelete" class="modal-block modal-header-color modal-block-danger mfp-hide">
			<div class="panel">
				<div class="panel-heading">
					<h2 class="panel-title">消息!</h2>
				</div>
				<div class="panel-body bk-noradius">
					<div class="modal-wrapper">
						<div class="modal-icon">
							<i class="fa fa-times-circle"></i>
						</div>
						<div class="modal-text" style="font-size: 20px;">
							<h4>危险：</h4>
							<p>确定删除该人员？</p>
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



	<!-- start: JavaScript-->

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
	<script src="${path}/assets/js/common/page-person.js"></script>
	<!-- end: JavaScript-->
</body>

</html>