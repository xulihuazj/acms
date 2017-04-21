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
<link href="${path}/assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
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
								<a href="#"><i class="fa fa-list"></i>设备管理设置</a>
							</li>
							<li class="active">
								<i class="fa fa-gavel"></i>设备连接设置
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>设备管理设置</h2>
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
								<table class="table table-bordered table-striped mb-none" id="datatable-default">
									<thead>
										<tr>
											<th style="width: 60px;">序号.</th>
											<th>设备SN</th>
											<th>设备状态</th>
											<th>设备品牌</th>
											<th>设备型号</th>
											<th style="width: 220px;">操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${deviceList}" var="deviceInfo">
											<tr>
												<td>${deviceInfo.id}</td>
												<td>${deviceInfo.SN}</td>
												<td>
													<c:if test="${deviceInfo.status==1}">使用正常</c:if>
													<c:if test="${deviceInfo.status==2}">已停用</c:if>
												</td>
												<td>${deviceInfo.deviceBrand}</td>
												<td>${deviceInfo.deviceModel}</td>
												<td>
													<span class="label label-danger"><a onclick="breakConEvent(this)" data-deviceid="${deviceInfo.id}" sytle="color: white">断开连接</a></span> <span
														class="label label-success"><a onclick="estConnectEvnent(this)" data-deviceid="${deviceInfo.id}" sytle="color: white">建立连接</a></span> <span
														class="label label-warning"><a onclick="stopDeviceEvent(this)" data-deviceid="${deviceInfo.id}" sytle="color: white">停用设备</a></span>
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
			<!-- Footer -->
			<%@ include file="/page-footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>

	<!-- 断开连接 -->
<div id="breakConnectModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel">
						<div class="panel-heading" style="background-color: #ec1e13;">
							<h2 class="panel-title" style="color: #fff">危险!</h2>
						</div>
						<div class="panel-body bk-noradius">
							<div class="modal-wrapper">
								<div class="modal-icon">
									<i class="fa fa-times-circle" style="color: #ec1e13"></i>
								</div>
								<div class="modal-text" style="font-size: 20px;">
									<p>确定断开此连接设备，请确认！</p>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" id="confirmBreak">确定</button>
									<button class="btn btn-default modal-dismiss" id="cancelBreak">取消</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 建立连接 -->
	<div id="estConnectModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel-heading" style="background-color: #39bd2f;">
						<h1 class="panel-title">消息!</h1>
					</div>
					<div class="panel-body bk-noradius">
						<div class="modal-wrapper">
								<div class="modal-icon">
									<i class="fa fa-question-circle" style="color: #39bd2f"></i>
								</div>
							<div class="modal-text">
								<p style="font-size: 18px;">确定该管理员?</p>
							</div>
						</div>
					</div>
					<div class="">
						<div class="row">
							<div class="col-md-12 text-right">
								<button class="btn btn-info modal-confirm" id="confirmEst">确认</button>
								<button class="btn btn-default modal-dismiss" id="cancelEst">取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<!-- 禁用管理员 -->
	<div id="stopDeviceModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel">
						<div class="panel-heading" style="background-color: #ed9c28;">
							<h2 class="panel-title" style="color: #fff">警告!</h2>
						</div>
						<div class="panel-body bk-noradius">
							<div class="modal-wrapper">
								<div class="modal-icon">
									<i class="fa fa-question-circle" style="color: #ed9c28"></i>
								</div>
								<div class="modal-text" style="font-size: 20px;">
									<p>是否停用此设备，请确认！</p>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" id="confirmStop">确定</button>
									<button class="btn btn-default modal-dismiss" id="cancelStop">取消</button>
								</div>
							</div>
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
		<script src="${path}/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<!-- Theme JS -->
	<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path}/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path}/assets/js/pages/ui-modals.js"></script>
	<script src="${path}/assets/js/common/page-device.js"></script>
	<!-- end: JavaScript-->
</body>
<script type="text/javascript">
	$(function(){
		
	});
	function breakConEvent(event){
		$(event).attr("id","breakCon");//给元素加上id用户处理
		$("#breakConnectModal").modal("show");
	}
	$("#confirmBreak").click(function(){
		var deviceId = $("#breakCon").data("deviceid");
		$.ajax({
			url: "${path}/device/breakConnect.do", 
			type: 'POST',
			data: "deviceId=" + deviceId,
			async: false,//设置为同步请求
			dataType: "json",
			success: function(data){
			    	if(data.message == 'success'){
			    		$("#breakConnectModal").modal("hide");
			    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
			    			document.forms[0].action="${path}/device/breakConnect.do";
			    			document.forms[0].submit();
						},1000);
			    		new PNotify({
							title: '操作成功',
							text: '断开此设备连接成功!',
							type: 'success'
						});
			    		
			    	}else{
			    		$("#breakConnectModal").modal("hide");
			    		new PNotify({
							title: '操作失败',
							text: '对不起，系统异常，无法完成此操作，请联系管理员！',
							type: 'error'
						});
			    	}
				}
			});
	});
	function estConnectEvnent(event){
		$(event).attr("id","estConnect");//给元素加上id用户处理
		$("#estConnectModal").modal("show");
	}
	$("#confirmEst").click(function(){
		var deviceId = $("#estConnect").data("deviceid");
		$.ajax({
			url: "${path}/device/ecstConnect.do", 
			type: 'POST',
			data: "deviceId=" + deviceId,
			async: false,//设置为同步请求
			dataType: "json",
			success: function(data){
			    	if(data.message == 'success'){
			    		$("#estConnectModal").modal("hide");
			    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
			    			document.forms[0].action="${path}/device/ecstConnect.do";
			    			document.forms[0].submit();
						},1000);
			    		new PNotify({
							title: '操作成功',
							text: '建立此设备连接成功!',
							type: 'success'
						});
			    		
			    	}else{
			    		$("#estConnectModal").modal("hide");
			    		new PNotify({
							title: '操作失败',
							text: '对不起，系统异常，无法完成此操作，请联系管理员！',
							type: 'error'
						});
			    	}
				}
			});
	});
	
	function stopDeviceEvent(event){
		$(event).attr("id","stopDevice");//给元素加上id用户处理
		$("#stopDeviceModal").modal("show");
	}
	
	/* 确认停用设备 */
	$("#confirmStop").click(function(){
		var deviceid = $("#stopDevice").data("deviceid");
		$.ajax({
			url: "${path}/device/stopDevice.do", 
			type: 'POST',
			data: "deviceId=" + deviceid,
			async: false,//设置为同步请求
			dataType: "json",
			success: function(data){
			    	if(data.message == 'success'){
			    		$("#stopDeviceModal").modal("hide");
			    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
			    			document.forms[0].action="${path}/device/stopDevice.do";
			    			document.forms[0].submit();
						},1000);
			    		new PNotify({
							title: '操作成功',
							text: '停用此设备成功!',
							type: 'success'
						});
			    	}else{
			    		$("#stopDeviceModal").modal("hide");
			    		new PNotify({
							title: '操作失败',
							text: '对不起，系统异常，无法完成此操作，请联系管理员！',
							type: 'error'
						});
			    	}
				}
			});
	});
	
	$("#cancelBreak").click(function(){
		$("#breakConnectModal").modal("hide");
	});
	$("#cancelEst").click(function(){
		$("#estConnectModal").modal("hide");
	});
	$("#cancelStop").click(function(){
		$("#stopDeviceModal").modal("hide");
	});
</script>

</html>