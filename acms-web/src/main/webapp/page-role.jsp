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
<link href="${path}/assets/plugins/pnotify/css/pnotify.custom.css" rel="stylesheet" />
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
												<th style="width: 280px;">操作</th>
											</tr>
										</thead>
										<tbody>
												<c:forEach items="${userList}" var="user">
													<tr>
														<td>${user.id}</td>
														<td>${user.userName}</td>
														<td>
															<c:if test="${user.type==1}">超级管理员</c:if>
															<c:if test="${user.type==2}">普通管理员</c:if>
														</td>
														<td>
																<c:if test="${user.status==1}">正常</c:if>
																<c:if test="${user.status==2}">停用</c:if>
																<c:if test="${user.status==-1}">删除</c:if>
														</td>
														<td>${user.mobile}</td>
														<td>${user.note}</td>
														<td>
															<c:if test="${user.status==1}">
																	<span class="label label-danger"><a onclick="deleteEvent(this)" data-userid="${user.id}" sytle="color: white">删除角色</a></span> <span
																	class="label label-warning"><a onclick="stopEvent(this)" data-userid="${user.id}" sytle="color: white">禁用角色</a></span> <span
																	class="label label-info"><a onclick="editEvent(this)" data-userid="${user.id}" sytle="color: white">编辑角色</a></span>
															</c:if>
															<c:if test="${user.status==2}">
																<span class="label label-success"><a onclick="startEvent(this)" data-userid="${user.id}" sytle="color: white">启用角色</a></span>
																	<span class="label label-danger"><a onclick="deleteEvent(this)" data-userid="${user.id}" sytle="color: white">删除角色</a></span> <span
																	class="label label-info"><a onclick="editEvent(this)" data-userid="${user.id}" sytle="color: white">编辑角色</a></span>
															</c:if>
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
	<!-- 启用管理员 -->
	<div id="startRoleModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel-heading">
						<h1 class="panel-title">消息!</h1>
					</div>
					<div class="panel-body bk-noradius">
						<div class="modal-wrapper">
							<div class="modal-text">
								<p style="font-size: 18px;">确定启用该管理员?</p>
							</div>
						</div>
					</div>
					<div class="">
						<div class="row">
							<div class="col-md-12 text-right">
								<button class="btn btn-info modal-confirm" id="confirmStart">确认</button>
								<button class="btn btn-default modal-dismiss" id="cancelStart">取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 删除管理员 -->
	<div id="deleteRoleModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel">
						<div class="panel-heading" style="background-color: #d2322d;">
							<h2 class="panel-title" style="color: #fff">危险!</h2>
						</div>
						<div class="panel-body bk-noradius">
							<div class="modal-wrapper">
								<div class="modal-icon">
									<i class="fa fa-times-circle" style="color: #d2322d"></i>
								</div>
								<div class="modal-text" style="font-size: 20px;">
									<p>确定删除该管理员，请确认！</p>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" id="confirmDelete">确定</button>
									<button class="btn btn-default modal-dismiss" id="cancelDelete">取消</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 禁用管理员 -->
	<div id="stopRoleModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
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
									<p>确定禁用该管理员，请确认！</p>
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
	<!-- 编辑管理员信息 -->
	<div id="editRoleModal" class="modal fade bs-example-modal-lg" data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2 class="panel-title">编辑管理员</h2>
						</div>
						<div class="panel-body bk-noradius">
							<form id="savePerson_form" class="form-horizontal mb-lg" novalidate="novalidate" style="font-size:16px;">
								<span name="id" value="${userId } id="form_userId"></span>
								<div class="form-group">
									<label class="col-sm-3 control-label" >角色名称：</label>
									<div class="col-sm-9">
										<input type="email" name="userName" id="form_userName" class="form-control" placeholder="请输入角色姓名..." required />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">角色类型：</label>
									<div class="col-sm-9">
										<div class="dropdown">
											<!-- <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="true">请选择角色类型</button> -->
										<input type="email" name="type" id="form_type" class="form-control"data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="true"" placeholder="请选择角色类型..." required />
											<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
												<li>
													<a href="#" >超级管理员</a>
												</li>
												<li>
													<a href="#">普通管理员</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">手机号：</label>
									<div class="col-sm-9">
										<input type="email" name="mobile"  id="form_mobile" class="form-control" placeholder="请输入手机号..." required />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">备注信息：</label>
									<div class="col-sm-9">
										<textarea class="form-control" name="note" id="form_note" placeholder="请输入备注信息..." required rows="4"></textarea>
									</div>
								</div>
							</form>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" id="confirmEdit">确定</button>
									<button class="btn btn-default modal-dismiss" id="cancelEdit">取消</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Vendor JS-->
	<script src="${path }/assets/vendor/js/jquery.min.js"></script>
	<script src="${path }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="${path }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Plugins JS-->
	<script src="${path }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script src="${path }/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="${path }/assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="${path }/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${path }/assets/plugins/pnotify/js/pnotify.custom.js"></script>
	
	<!-- Theme JS -->
	<script src="${path }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path }/assets/js/core.min.js"></script>
	<!-- Pages JS -->
	<script src="${path }/assets/js/pages/table-advanced.js"></script>
	<script type="text/javascript">
			$(document).ready(function() {
			});
			// 
			function startEvent(event){
				$(event).attr("id","startRole");//给元素加上id用户处理
				$("#startRoleModal").modal("show");
				
			}
			function deleteEvent(event){
				$(event).attr("id","deleteRole");//给元素加上id用户处理
				$("#deleteRoleModal").modal("show");
				
			}
			function stopEvent(event){
				$(event).attr("id","stopRole");//给元素加上id用户处理
				$("#stopRoleModal").modal("show");
				
			}
			function editEvent(event){
				$(event).attr("id","editRole");//给元素加上id用户处理
				$("#editRoleModal").modal("show");
				setInterval(function(){// 定时循环检测输入框
					if($("#form_userName").val().length > 0 || $("#form_type").val().length > 0 || $("#form_mobile").val().length > 0 || $("#form_note").val().length > 0 ){
						$("#confirmEdit").attr("disabled",false);
					}else{
						$("#confirmEdit").attr("disabled",true);
					}
				},100);
				
			}
			$("#cancelStart").click(function(){
				$("#startRoleModal").modal("hide");
			});
			$("#cancelDelete").click(function(){
				$("#deleteRoleModal").modal("hide");
			});
			$("#cancelStop").click(function(){
				$("#stopRoleModal").modal("hide");
			});
			$("#cancelEdit").click(function(){
				$("#editRoleModal").modal("hide");
			});
			
			/* 确认启用管理员 */
			$("#confirmStart").click(function(){
				//var userId = document.querySelector("#startRole").dataset.id;
				// 取出相应的id
				var userId = $("#startRole").data("userid");
				$.ajax({
					url: "${path}/user/system/startUser.do", 
					type: 'POST',
					data: "userId=" + userId,
					async: false,//设置为同步请求
					dataType: "json",
					success: function(data){
					    	if(data.message == 'success'){
					    		$("#startRoleModal").modal("hide");
					    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
					    			document.forms[0].action="${path}/user/system/ajaxUserList.do";
					    			document.forms[0].submit();
								},1000);
					    		new PNotify({
									title: '操作成功',
									text: '启用管理员成功!',
									type: 'success'
								});
					    		
					    	}else{
					    		$("#startRoleModal").modal("hide");
					    		new PNotify({
									title: '操作失败',
									text: '对不起，系统异常，无法完成此操作，请联系管理员！',
									type: 'error'
								});
					    	}
						}
					});
			});
			/* 删除管理员 */
			$("#confirmDelete").click(function(){
				var userId = $("#deleteRole").data("userid");
				$.ajax({
					url: "${path}/user/system/deleteUser.do", 
					type: 'POST',
					data: "userId=" + userId,
					async: false,//设置为同步请求
					dataType: "json",
					success: function(data){
					    	if(data.message == 'success'){
					    		$("#deleteRoleModal").modal("hide");
					    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
					    			document.forms[0].action="${path}/user/system/ajaxUserList.do";
					    			document.forms[0].submit();
								},1000);
					    		new PNotify({
									title: '操作成功',
									text: '删除此管理员成功!',
									type: 'success'
								});
					    	}else{
					    		$("#deleteRoleModal").modal("hide");
					    		new PNotify({
									title: '操作失败',
									text: '对不起，系统异常，无法完成此操作，请联系管理员！',
									type: 'error'
								});
					    	}
						}
					});
				
			});
			
			/* 确认禁用管理员 */
			$("#confirmStop").click(function(){
				var userId = $("#stopRole").data("userid");
				$.ajax({
					url: "${path}/user/system/stopUser.do", 
					type: 'POST',
					data: "userId=" + userId,
					async: false,//设置为同步请求
					dataType: "json",
					success: function(data){
					    	if(data.message == 'success'){
					    		$("#stopRoleModal").modal("hide");
					    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
					    			document.forms[0].action="${path}/user/system/ajaxUserList.do";
					    			document.forms[0].submit();
								},1000);
					    		new PNotify({
									title: '操作成功',
									text: '禁用管理员成功!',
									type: 'success'
								});
					    	}else{
					    		$("#stopRoleModal").modal("hide");
					    		new PNotify({
									title: '操作失败',
									text: '对不起，系统异常，无法完成此操作，请联系管理员！',
									type: 'error'
								});
					    	}
						}
					});
			});
			
			/* 确认编辑管理员 */
			$("#confirmEdit").click(function(){
				var userId = $("#editRole").data("userid");
				$("#form_userId").val(userId);// 赋值于userId用于序列化
				$.ajax({
					url: "${path}/user/system/saveUser.do", 
					type: 'POST',
					data: $("#savePerson_form").serialize()+"&id="+userId,
					async: false,//设置为同步请求
					dataType: "json",
					success: function(data){
					    	if(data.message == 'success'){
					    		$("#editRoleModal").modal("hide");
					    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
					    			document.forms[0].action="${path}/user/system/ajaxUserList.do";
					    			document.forms[0].submit();
								},1000);
					    		new PNotify({
									title: '操作成功',
									text: '禁用管理员成功!',
									type: 'success'
								});
					    	}else{
					    		$("#editRoleModal").modal("hide");
					    		new PNotify({
									title: '操作失败',
									text: '对不起，系统异常，无法完成此操作，请联系管理员！',
									type: 'error'
								});
					    	}
						}
					});
			});
		</script>
	<style type="text/css">
</style>
</body>
<script type="text/javascript">
	
</script>

</html>