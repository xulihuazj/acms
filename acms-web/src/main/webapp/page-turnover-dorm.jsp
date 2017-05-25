<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>门禁出入日志 | 学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" />
<!-- Vendor CSS-->
<link href="${path }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path }/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<link href="${path }/assets/plugins/select2/select2.css" rel="stylesheet" />
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
								<a href="${path }/turnover/queryDormAList.do"> <i class="icon fa fa-arrows-h"></i> 学生公寓A区
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>出入日志</h2>
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
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped"
									id="datatable-default">
										<thead>
										<tr >
											<th class="tablestyle">序号.</th>
											<th class="tablestyle">设备地点</th>
											<th class="tablestyle">人员出入</th>
											<th class="tablestyle">出入时间</th>
											<th class="tablestyle">所持卡号</th>
											<th class="tablestyle">操作</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tablestyle">
											<td>1</td>
											<td>学生公寓A区</td>
											<td>[朱岸峰]离开公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td  ><span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
											<td>2</td>
											<td>学生公寓A区</td>
											<td>[朱岸峰]进入公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td  ><span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>3</td>
											<td>学生公寓A区</td>
											<td>[张军]进入公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td  ><span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>4</td>
											<td>学生公寓A区</td>
											<td>[张军]进入公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td  ><span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>5</td>
											<td>学生公寓A区</td>
											<td>[赵一博]离开公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td  ><span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>6</td>
											<td>学生公寓A区</td>
											<td>[赵一博]进入公寓A区</td>
											<td>2017-04-16</td>
											<td  >75439579437598</td>
											<td > <span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>1</td>
											<td>学生公寓A区</td>
											<td>[张军]离开公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td > <span class="label label-info"><a sytle="color: white">查看详情</a></span></td>
										</tr>
										<tr class="tablestyle">
										<td>7</td>
											<td>学生公寓A区</td>
											<td>[张军]进入公寓A区</td>
											<td>2017-04-14</td>
											<td  >75439579437598</td>
											<td >	
												<span class="label label-info"><a sytle="color: white">查看详情</a></span>
											</td>
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
		<!-- Vendor JS-->
		<script src="${path }/assets/vendor/js/jquery.min.js"></script>
		<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${path }/assets/plugins/select2/select2.js"></script>
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
</style>
</body>
</html>