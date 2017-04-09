<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>人员管理 | 门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="assets/plugins/jquery-datatables-bs3/css/datatables.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->

<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

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

	<!-- Start: 内容 -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<%@ include file="/page-sidebar.jsp" %>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main sidebar-minified">
				<!-- Page Header -->
						<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="index.html"><i class="icon fa fa-home"></i> 我的管理中心</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-table"></i>人员管理</a>
							</li>
							<li class="active">
								<i class="fa fa-thumbs-o-up"></i>全部学院
							</li>
						</ol>
					</div>
					<div class="pull-right"><h2>人员管理</h2></div>
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
									<!-- 			<th style="width: 6%;">序号.</th>
											<th style="width: 9%;">姓名</th>
											<th style="width: 10%;">卡号</th>
											<th style="width: 10%;">身份证号</th>
											<th style="width: 9%;">人员类型</th>
											<th style="width: 5%;">性别</th>
											<th style="width: 5%;">年龄</th>
											<th style="width: 5%;">联系电话</th>
											<th style="width: 18%;">学院</th>
											<th style="width: 18%;">专业</th>
											<th style="width: 5%;">班级</th> -->
											
											<th >序号.</th>
											<th >姓名</th>
											<th >卡号</th>
											<th >身份证号</th>
											<th >人员类型</th>
											<th >性别</th>
											<th >年龄</th>
											<th >联系电话</th>
											<th >学院</th>
											<th >专业</th>
											<th >班级</th>
											</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>1</td>
											<td>张忆博</td>
											<td>201323030418</td>
											<td>330821199401244915</td>
											<td >学生</td>
											<td >男</td>
											<td>23</td>
											<td>13721431668</td>
											<td>电气工程学院</td>
											<td>测控技术与仪器</td>
											<td>1304</td>
										</tr>
										<tr class="gradeC">
											<td>2</td>
											<td>张忆博</td>
											<td>201323030418</td>
											<td>330821199401244915</td>
											<td >工作人员</td>
											<td >男</td>
											<td>23</td>
											<td>13721431668</td>
											<td>电气工程学院</td>
											<td>测控技术与仪器</td>
											<td>1304</td>
										</tr>
										<tr class="gradeA">
											<td>3</td>
											<td>张忆博</td>
											<td>201323030418</td>
											<td>330821199401244915</td>
											<td >教师</td>
											<td >女</td>
											<td>23</td>
											<td>13721431668</td>
											<td>信息科学与工程学院</td>
											<td>测控技术与仪器</td>
											<td>1304</td>
										</tr>
										<tr class="gradeA">
											<td>4</td>
											<td>张忆博</td>
											<td>201323030418</td>
											<td>330821199401244915</td>
											<td >学生</td>
											<td >男</td>
											<td>23</td>
											<td>13721431668</td>
											<td>电气工程学院</td>
											<td>测控技术与仪器</td>
											<td>1304</td>
										</tr>
										<tr class="gradeA">
											<td>5</td>
											<td>张忆博</td>
											<td>201323030418</td>
											<td>330821199401244915</td>
											<td >工作人员</td>
											<td >女</td>
											<td>23</td>
											<td>13721431668</td>
											<td>电气工程学院</td>
											<td>测控技术与仪器</td>
											<td>1304</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->

			<!-- Footer -->
			<%@ include file="/page-footer.jsp" %>
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
						<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
							<div class="form-group">
								<label class="col-sm-3 control-label">人员姓名：</label>
								<div class="col-sm-9">
									<input type="email" name="email" class="form-control" placeholder="请输入人员姓名..." required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所持卡号：</label>
								<div class="col-sm-9">
									<input type="email" name="email" class="form-control" placeholder="请输入人员所持卡号..." required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">身份证号：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入身份证号..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员类型：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请选择人员类型..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员性别：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请选择人员性别..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">人员年龄：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入年龄..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">联系电话：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入联系电话..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所属学院：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入人员所属学院..." />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">所属专业：</label>
								<div class="col-sm-9">
									<input type="url" name="url" class="form-control" placeholder="请输入人员所属专业..." />
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
								<button class="btn btn-primary modal-confirm">确认</button>
								<button class="btn btn-default modal-dismiss">取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- start: JavaScript-->

	<!-- Vendor JS-->
	<script src="assets/vendor/js/jquery.min.js"></script>
	<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/skycons/js/skycons.js"></script>
	<script src="assets/vendor/js/pace.min.js"></script>

	<!-- Plugins JS-->
	<script src="assets/plugins/moment/js/moment.min.js"></script>
	<script src="assets/plugins/select2/select2.js"></script>
	<script src="assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="assets/plugins/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
	<script src="assets/plugins/jquery-datatables-bs3/js/datatables.js"></script>
	<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/js/common/page-role.js"></script>

	<!-- end: JavaScript-->

</body>

</html>