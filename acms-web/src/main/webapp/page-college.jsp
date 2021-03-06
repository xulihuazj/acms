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
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" sizes="157x157" />
<!-- Vendor CSS-->
<link href="${path }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path }/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path }/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path }/assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="${path }/assets/plugins/jquery-datatables-bs3/css/datatables.css" rel="stylesheet" />
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
								<a><i class="fa fa-tasks "></i>人员管理</a>
							</li>
							<li class="active">
								<a href="${path }/person/ajaxCollegeList.do"><i class="fa fa-arrows"></i>全部学院</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>人员管理</h2>
					</div>
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
								<table class="table table-bordered table-striped" id="datatable-default">
									<thead>
										<tr>
											<th class="tablestyle">序号.</th>
											<th class="tablestyle">学院名称</th>
											<th class="tablestyle">学院代号</th>
											<th class="tablestyle">操作</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tablestyle">
											<td>1</td>
											<td>电气工程学院</td>
											<td>10001</td>
											<td>
												<span class="label label-info" ><a onclick="queryDetail();" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>2</td>
											<td>粮油食品学院</td>
											<td>10002</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>3</td>
											<td>生物工程学院</td>
											<td>10003</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>4</td>
											<td>土木建筑学院</td>
											<td>10004</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>5</td>
											<td>化学化工学院</td>
											<td>10005</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>6</td>
											<td>材料科学与工程学院</td>
											<td>10006</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>7</td>
											<td>管 理 学 院</td>
											<td>10007</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>8</td>
											<td>理 学 院</td>
											<td>10008</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>9</td>
											<td>法 学 院</td>
											<td>10009</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>10</td>
											<td>设计艺术学院</td>
											<td>10010</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>11</td>
											<td>中英国际学院</td>
											<td>10011</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>12</td>
											<td>机电工程学院</td>
											<td>10012</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>13</td>
											<td>体育学院</td>
											<td>10013</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>14</td>
											<td>信息科学与工程学院</td>
											<td>10014</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>15</td>
											<td>经济贸易学院</td>
											<td>10015</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>16</td>
											<td>外 语 学 院</td>
											<td>10016</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>17</td>
											<td>新闻与传播学院</td>
											<td>10017</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>18</td>
											<td>国际教育学院</td>
											<td>10018</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span> 
											</td>
										</tr>
										<tr class="tablestyle">
											<td>19</td>
											<td>继续教育学院</td>
											<td>10019</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
											</td>
										</tr>
										<tr class="tablestyle">
											<td>20</td>
											<td>马克思主义学院</td>
											<td>10020</td>
											<td>
												<span class="label label-info"><a onclick="" id="startover" sytle="color: white">查看学院详情</a></span>
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
			<%@ include file="/page-footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>
	<!--/container-->
	
	<!-- 查看详情弹出框 -->
<div id="queryDetailModal" class="modal fade bs-example-modal-lg" data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2 class="panel-title">学院详情</h2>
						</div>
						<div class="panel-body bk-noradius">
							<form id="savePerson_form" class="form-horizontal mb-lg" novalidate="novalidate" style="font-size: 16px;">
								<span name="id" value="${userId } id="form_userId"></span>
								<div class="form-group">
									<label class="col-sm-3 control-label">英文名：</label>
									<div class="col-sm-9">
										<span>College of Electrical Engineering</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">承担学位：</label>
									<div class="col-sm-9">
										<span>承担硕士研究生、 本科生教学</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">现任领导：</label>
									<div class="col-sm-9">
										<span>刘楠嶓，从沛杰等</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">教育理念：</label>
									<div class="col-sm-9 " style="font-size: 17px;">
										<span>厚基础，宽口径，强实践，重创新</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">专业分类：</label>
									<div class="col-sm-9" style="line-height:30px;">
										<!-- <select id="form_type" name="type" class=" form-control input-md" size="1">
											<option >自动化</option>
											<option >电气工程及其自动化</option>
											<option >测控技术与仪器</option>
											<option >轨道交通与信号控制</option>
										</select> -->
											<p>自动化</p>
											<p>电气工程及其自动化</p>
											<p>测控技术与仪器</p>
											<p>轨道交通与信号控制</p>
										
										
									</div>
								</div>
								<div class="form-group" style="line-height:30px;">
									<label class="col-sm-3 control-label">学院简介：</label>
									<div class="col-sm-9">
									<span>电气工程学院成立于2005年1月，前身是1980年成立的电气系和电工教研室。
									是河南省仪器仪表学会理事长单位，河南省电工技术学会理事单位。全院现有教职工79人，其中有教授、副教授40人，高级实验师、高级工程师5人，博士25人；
									教师中享受国务院政府特殊津贴专家、河南省优秀专家2人，博士生导师1人，硕士生导师14人。
												</span>
									</div>
								</div>
							</form>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" data-dismiss="modal">确定</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

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
		
		function queryDetail(){
			$("#queryDetailModal").modal("show");
		}
		
		/*点击取消清空输入框，并退出弹出框*/
		$("#cancelSave").click(function(){
			$("#editPersonModal").modal("hide");
		});
		/*点击确定提交人员信息*/
		$("#confirmSave").click(function(){
		});
	</script>
</body>

</html>