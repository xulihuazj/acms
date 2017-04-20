<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>人员管理 | 门禁管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
<!-- Vendor CSS-->
<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path}/assets/plugins/pnotify/css/pnotify.custom.css" rel="stylesheet" />
<link href="${path}/assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
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
								<a href="${path }/index.do"><i class="icon fa fa-home"></i> 我的管理中心</a>
							</li>
							<li>
								<a><i class="fa fa-tasks"></i>人员管理</a>
							</li>
							<li class="active">
								<a href="${path }/person/ajaxPersonList.do"><i class="fa fa-female "></i>全部学生</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>人员信息管理</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>人员信息管理
								</h6>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped mb-none" id="datatable-details">
									<thead>
										<tr>
											<!-- <th style="width: 6%;">序号.</th>
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
											<th>序号.</th>
											<th>姓名</th>
											<th>卡号</th>
											<th>身份证号</th>
											<th style="min-width: 47px;">类型</th>
											<th>性别</th>
											<th>年龄</th>
											<th>联系电话</th>
											<th>学院</th>
											<th>专业</th>
											<th>班级</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${personList}" var="person">
											<tr>
												<td>${person.id}</td>
												<td>${person.perName}</td>
												<td>${person.perId}</td>
												<td>${person.perIdentificate}</td>
												<td>
													<c:if test="${person.perType==1}">学生</c:if>
													<c:if test="${person.perType==2}">教师</c:if>
													<c:if test="${person.perType==3}">工作人员</c:if>
												</td>
												<td>
													<c:if test="${person.perSex==1}">男</c:if>
													<c:if test="${person.perSex==2}">女</c:if>
												</td>
												<td>${person.perAge}</td>
												<td>${person.perMobile}</td>
												<td>${person.perDepart}</td>
												<td>${person.perMajor}</td>
												<td>1304</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modalBasic"></div>
			<!-- 删除人员信息 -->
			<div class="decideDelete"></div>
			<!-- 编辑人员信息 -->
			<div class="editPersonModal"></div>
			<!-- 禁用人员 -->
			<div class="decideStop"></div>
			<!-- End Main Page -->

			<!-- Footer -->
			<%@ include file="/page-footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>
	<div class="clearfix"></div>

	<!-- Vendor JS-->
	<script src="${path}/assets/vendor/js/jquery.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path}/assets/vendor/skycons/js/skycons.js"></script>
	<script src="${path}/assets/vendor/js/pace.min.js"></script>
	<!-- Plugins JS-->
	<script src="${path}/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path}/assets/plugins/select2/select2.js"></script>
	<script src="${path}/assets/plugins/pnotify/js/pnotify.custom.js"></script>
	<script src="${path}/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
	<script src="${path}/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables-bs3/js/datatables.js"></script>
	<!-- Theme JS -->
	<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path}/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path}/assets/js/common/page-person.js"></script>
	<script src="${path}/assets/js/pages/ui-modals.js"></script>
	<script src="${path}/assets/js/common.js"></script>
</body>
	<script type="text/javascript">
		$(function(){
			//$("#modalBasic").modal("show");
			//$("#decideDelete").modal("show");
			//$("#editPersonModal").modal("show");
			//$("#decideStop").modal("show");
			var s = $("#eidtPerson").html();
		});
		
		$("#eidtPerson").click(function(){
			$("#modalBasic").modal("show");
		});
		/*点击取消清空输入框，并退出弹出框*/
		$("#cancelSave").click(function(){
			$("#editPersonModal").modal("hide");
		});
		/*点击确定提交人员信息*/
		$("#confirmSave").click(function(){
		});
	</script>
</html>