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
<!-- Vendor CSS-->
<link href="${path }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${path }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path }/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${path }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path }/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path }/assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="${path }/assets/plugins/jquery-datatables-bs3/css/datatables.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link href="${path }/assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="${path }/assets/css/style.css" rel="stylesheet" />
<link href="${path }/assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->

<!-- Head Libs -->
<script src="${path }/assets/plugins/modernizr/js/modernizr.js"></script>

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
								<a href="homepage.jsp"><i class="icon fa fa-home"></i> 我的管理中心</a>
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
									<i class="fa fa-table red"></i><span class="break"></span>学院信息管理
								</h6>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped mb-none"
									id="datatable-details">
									<thead>
										<tr>
											<th >序号.</th>
											<th >学院名称</th>
											<th >操作</th>
											</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>1</td>
											<td>电气工程学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeC">
											<td>2</td>
											<td>粮油食品学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>3</td>
											<td>生物工程学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>4</td>
											<td>土木建筑学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>5</td>
											<td>化学化工学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>6</td>
											<td>材料科学与工程学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>7</td>
											<td>管 理 学 院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>8</td>
											<td> 理 学 院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>9</td>
											<td>法 学 院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>10</td>
											<td>设计艺术学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>11</td>
											<td>中英国际学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>12</td>
											<td>机电工程学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>13</td>
											<td> 体育学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>14</td>
											<td>信息科学与工程学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>15</td>
											<td>经济贸易学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>16</td>
											<td>外 语 学 院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>17</td>
											<td>新闻与传播学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>18</td>
											<td>国际教育学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
												</td>
										</tr>
										<tr class="gradeA">
											<td>19</td>
											<td>继续教育学院</td>
										</tr>
										<tr class="gradeA">
											<td>20</td>
											<td>马克思主义学院</td>
											<td>
													<span class="label label-success"><a onclick="" id="startover" sytle="color: white">启用</a></span>
													<span class="label label-danger"><a onclick="" id="deleteRole" sytle="color: white">删除</a></span>
													<span class="label label-warning"><a onclick="" id="stopRole" sytle="color: white">禁用</a></span>
													<span class="label label-default"><a onclick="" id="editRole" sytle="color: white">编辑</a></span>
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

			<!-- Footer -->
			<%@ include file="/page-footer.jsp" %>
			<!-- End Footer -->

		</div>
	</div>
	<!--/container-->

	<!-- start: JavaScript-->

	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path }/assets/vendor/js/pace.min.js"></script>

	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path }/assets/plugins/select2/select2.js"></script>
	<script src="${path }/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="${path }/assets/plugins/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
	<script src="${path }/assets/plugins/jquery-datatables-bs3/js/datatables.js"></script>
	<script src="${path }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path }/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="${path }/assets/js/common/page-person.js"></script>
	<script src="${path }/assets/js/pages/ui-modals.js"></script>
	<!-- end: JavaScript-->
	<script type="text/javascript">
		$(function(){
			
		});
		
		/*点击取消清空输入框，并退出弹出框*/
		$("#cancelSave").click(function(){
			$("#editPersonModal").modal("hide");
			alert();
		});
		/*点击确定提交人员信息*/
		$("#confirmSave").click(function(){
			$("")
		});
	</script>
</body>

</html>