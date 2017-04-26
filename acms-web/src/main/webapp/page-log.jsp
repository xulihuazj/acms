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
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" sizes="157x157" />
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
<link href="${path }/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
<link href="${path }/assets/plugins/bootstrap-datepicker/css/datepicker-theme.css" rel="stylesheet" />
<link href="${path }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" />
<link href="${path }/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
<link href="${path }/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
<link href="${path}/assets/plugins/jquery-datatables-bs3/css/datatables.css" rel="stylesheet" />
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
								<a href="homepage.jsp"> <i class="icon fa fa-home"></i> 我的管理中心
								</a>
							</li>
							<li>
								<a href=""> <i class="icon fa fa-cog"></i> 系统用户管理
								</a>
							</li>
							<li>
								<a href="${path }/system/syslog/toList.do"> <i class="icon fa  fa-sort-amount-asc"></i> 系统日志
								</a>
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>管理中心</h2>
					</div>
				</div>
				<!-- End 面包屑 -->

				<div class="row">
					<!-- 表单数据 -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">

							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>日志信息
								</h6>
							</div>
							<div class="panel-body panel-body bk-bg-white bk-padding-top-30 bk-padding-bottom-20">
								<!-- 请求查询 -->
								<form id="query_form" action="${path }/system/syslog/querySyslogList.do" method="post" class="form-inline form-horizontal form-bordered">
									<div class="form-group">
										<span class="lable_info" for="keyWord" style="font-size: 15px;">关键字：</span>
										<input type="" id="keyWord" name="keyWord" class="form-control" placeholder="请输入关键字" style="width: 150px;" />
									</div>
									<div class="form-group" style="width: 350px;">
										<label class="col-md-3 control-label" style="width: 80px; font-size: 15px; padding-right: 0px;">日期：</label>
										<div class="col-md-9" style="padding-left: 0px;">
											<div class="input-daterange input-group" data-plugin-datepicker data-date-format="yyyy-mm-dd">
												<span class="input-group-addon"> <i class="fa fa-calendar"></i></span>
												<input type="" class="form-control" style="width: 97px" name="startTime" placeholder="请选择日期"  />
												<span class="input-group-addon">到</span>
												<input type="" class="form-control" style="width: 97px" name="endTime"  placeholder="请选择日期"/>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label" for="select" style="padding-right: 0px; font-size: 15px;">类型：</label>
										<div class="col-md-2" style="padding-left: 0px; font-size: 15px;">
											<select id="select" name="logType" style="height: 34px;" class="form-control " size="1" data-width="164"
												data-height="28">
												<option value="0">请选择日志类型</option>
												<option value="1">登录退出</option>
												<option value="2">操作日志</option>
												<option value="3">运行日志</option>
											</select>
										</div>
									</div>
									<div class="form-group" style="padding-right: 10px;">
										<div>
											<button class="btn btn-info" type="submit" id="querySyslogList">查询</button>
										</div>
									</div>
								</form>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="">
									<thead>
										<tr>
											<th style="width: 5%; min-width: 50px;text-align: center;">
												序号
											</th>
											<th style="width: 7%; min-width: 100px;text-align: center;">
												日志类型
											</th>
											<th style="width: 12%; min-width: 180px;text-align: center;">
												日志时间
											</th>
											<th style="width: 7%; min-width: 100px;text-align: center;">
												操作者
											</th>
											<th style="width: 30%; min-width: 100px;text-align: center;">
												日志内容
											</th>
										</tr>
									</thead>
									<!-- 在此处加循环 -->
									<tbody>
											<c:forEach items="${syslogList}" var="syslog">
												<tr >
													<th style="text-align: center;">${syslog.id}</th>
													<th style="text-align: center;">
														<c:if test="${syslog.logType==1}">登录退出</c:if>
														<c:if test="${syslog.logType==2}">操作日志</c:if>
														<c:if test="${syslog.logType==3}">运行日志</c:if>
													</th>
													<th style="text-align: center;">${syslog.logUploadTime}</th>
													<th style="text-align: center;">${syslog.userName}</th>
													<th style="text-align: center;">${syslog.logContent}</th>
													<%-- <td>
														<c:if test="${user.status==1}">
															<span class="label label-danger"><a onclick="deleteEvent(this)" data-userid="${user.id}"
																sytle="color: white">删除角色</a></span>
															<span class="label label-warning"><a onclick="stopEvent(this)" data-userid="${user.id}"
																sytle="color: white">禁用角色</a></span>
															<span class="label label-info"><a onclick="editEvent(this)" data-userid="${user.id}"
																sytle="color: white">编辑角色</a></span>
														</c:if>
														<c:if test="${user.status==2}">
															<span class="label label-success"><a onclick="startEvent(this)" data-userid="${user.id}"
																sytle="color: white">启用角色</a></span>
															<span class="label label-danger"><a onclick="deleteEvent(this)" data-userid="${user.id}"
																sytle="color: white">删除角色</a></span>
															<span class="label label-info"><a onclick="editEvent(this)" data-userid="${user.id}"
																sytle="color: white">编辑角色</a></span>
														</c:if>
													</td> --%>
												</tr>
											</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- End Main Page -->
				<%@ include file="/page-footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script src="${path }/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${path }/assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="${path }/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<script src="${path }/assets/plugins/moment/js/moment.min.js"></script>
	<script src="${path }/assets/plugins/fullcalendar/js/fullcalendar.js"></script>
	<script src="${path }/assets/plugins/chart-master/js/Chart.js"></script>
	<script src="${path }/assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>
	<script src="${path}/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="${path }/assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${path }/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${path }/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script src="${path }/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script src="${path }/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
	<script src="${path }/assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
	<!-- Theme JS -->
	<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path }/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path }/assets/js/pages/form-elements.js"></script>
	<script src="${path }/assets/js/pages/table-advanced.js"></script>
</body>
<script type="text/javascript">
	$(function() {
		/* 
		
		TODO
		
		 */
	});
	$("#querySyslogList").click(
			function() {
		/* 		var oldPwd = $("#oldPwd").val();
				var newPwd = $('#newPwd').val();
				var comfirePwd = $('#comfirePwd').val();
				$.ajax({
					type : "POST",
					url : "${path}/system/syslog/querySyslogList.do",
					dataType : 'json',
					data : "oldPwd=" + oldPwd + "&newPwd=" + newPwd
							+ "&comfirePwd=" + comfirePwd,
					cache : true,
					async : false,
					success : function(data) {
						if (data.message == 'success') {
							// var resultData = eval('(' + data + ')');
							//清空输入框
							$("#oldPwd").val("");
							$("#newPwd").val("");
							$("#comfirePwd").val("");
							new PNotify({
								title : '操作成功',
								text : '恭喜您，修改密码成功，请记住登录密码!',
								type : 'success'
							});
						} else {
							new PNotify({
								title : '操作失败',
								text : '请输入正确的密码后重试！',
								type : 'error'
							});
							$("#oldPwdErr").html(data.message);
						}
					},
					error : function(data) {
						new PNotify({
							title : '操作失败',
							text : '系统异常，请联系管理员！',
							type : 'error'
						});
					}
				}); */

			});
</script>
</html>