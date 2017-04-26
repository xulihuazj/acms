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
<link rel="shortcut icon" href="${path}/basic/imgfile/timg.ico" type="image/x-icon" sizes="157x157" />
<!-- Vendor CSS-->
<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${path}/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<link href="${path}/assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
<link href="${path}/assets/vendor/bootstrap/css/bootstrap-datetimepicker.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="${path}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="${path}/assets/plugins/select2/select2.css" rel="stylesheet" />
<link href="${path}/assets/plugins/jquery-datatables-bs3/css/datatables.css" rel="stylesheet" />
<link href="${path}/assets/plugins/pnotify/css/pnotify.custom.css" rel="stylesheet" />
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
								<a><i class="fa fa-list"></i>设备管理设置</a>
							</li>
							<li class="active">
								<a href="${path }/device/timeGroup.do"><i class="fa fa-tachometer"></i>时间组设置</a>
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
												<th style="width: 175px;text-align: center;">启用时间</th>
												<th style="width: 175px;text-align: center;">停用时间</th>
												<th style="width: 110px;text-align: center;">当前状态</th>
												<th style="text-align: center;">操作</th>
												<th style="text-align: center;">门禁开启结束时间</th>
											</tr>
										</thead>
										<tbody>
										
										<c:forEach items="${deviceTimeExts}" var="deviceInfo">
											<tr>
												<td class="time_group_td" >${deviceInfo.id}</td>
												<td class="time_group_td" id="activateTime">${deviceInfo.activateTime}</td>
												<td class="time_group_td" id="abateTime">
													<c:if test="${deviceInfo.abateTime != null}">${deviceInfo.abateTime}</c:if>
													<c:if test="${deviceInfo.abateTime == null}">无</c:if>
												</td>
												<td class="time_group_td" >
													<c:if test="${deviceInfo.status == 1}">设备正常</c:if>
													<c:if test="${deviceInfo.status == 2}">设备已停用</c:if>
												</td>
												<td> 
													<c:if test="${deviceInfo.status==1 }">
														<a class="btn btn-info" style="height: 35px" > <i onclick="editGuardTime(this)" data-deviceid="${deviceInfo.id}">编辑门禁时间</i></a> 
													</c:if>
													<c:if test="${deviceInfo.status==2 }">
														<a class="btn btn-info" style="height: 35px"  > <i onclick="editGuardTime(this)" data-deviceid="${deviceInfo.id}" style="color:#ff0000;" disabled="true">编辑门禁时间</i></a> 
													</c:if>
												</td>
												<td class="time_group_td">
													<c:if test="${deviceInfo.timeStart != null}">${deviceInfo.timeStart}  到   ${deviceInfo.timeEnd }</c:if>
													<c:if test="${deviceInfo.timeStart == null}">无</c:if>
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
			</div>
			<!-- End Main Page -->
			<!-- Footer -->
			<%@ include file="/page-footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>
	
	<!-- 编辑门禁时间 -->
	<div class="editGuardd">
		<div class="input-append date form_datetime">
			<input size="16" type="text" value="" readonly>
			<span class="add-on"><i class="icon-th"></i></span>
		</div>
	</div>

	<div id="editGuardModal" class="modal fade " data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog panel panel-default" role="document">
			<div class="modal-content">
				<div class="modal-body ">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2 class="panel-title">门禁时间设置</h2>
						</div>
						<div class="panel-body bk-noradius">
							<form id="editTime_form2" action="${path}/device/timeGroupInstall2.do" method="get" class="form-horizontal mb-lg" novalidate="novalidate" >
								<input  name="id" id="deviceId" hidden/>
								<div class="form-group">
									<label class="col-sm-4 control-label">门禁开始时间：</label>
									<div class="col-sm-8">
										<div class="input-append date form_datetime">
											<input size="35" type="text"  name="guardTimeStart" readonly  >
											<span class="add-on" ><i class="icon-th" ></i></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">门禁结束时间：</label>
									<div class="col-sm-8">
										<div class="input-append date form_datetime">
											<input size="35" type="text" readonly name="guardEndStart"  >
											<span class="add-on" ><i class="icon-th"></i></span>
										</div>
									</div>
								</div>
								
							</form>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-right">
									<button class="btn btn-primary modal-confirm" id="confirmEditTime2" type="submit">确定</button>
									<button class="btn btn-default modal-dismiss" id="cancelInputBox">取消</button>
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
	<script src="${path}/assets/plugins/bootstrap-datepicker/js/bootstrap-datetimepicker.js"></script>
	<script src="${path }/assets/plugins/pnotify/js/pnotify.custom.js"></script>
	<!-- Theme JS -->
	<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
	<script src="${path}/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="${path}/assets/js/pages/ui-modals.js"></script>
	<script src="${path}/assets/js/common/page-device.js"></script>
	<script src="${path}/assets/js/common.js"></script>
	<!-- end: JavaScript-->
</body>

<script type="text/javascript">
	$(function(){
	});
	
	$("#confirmEditTime2").click(function(){
		alert($("#editTime_form2"));
		$("#editTime_form2").submit();
	});
	function getDate(tm){
		var tt=new Date(parseInt(tm)).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " ")
		return tt;
		}
	  $(".form_datetime").datetimepicker({
	        format: "yyyy MM dd - hh:ii"
	    });
	  
		function editGuardTime(event){
			$(event).attr("id","editGuardTime");//给元素加上id用户处理
			var deviceId = $("#editGuardTime").data("deviceid");
			$("#deviceId").val(deviceId);
			$("#deviceId").text(deviceId);
			$("#editGuardModal").modal("show");
			
		}
	  $("#confirmEditTime").click(function(){
		  $("#editGuardModal").modal("hide");
		  $.ajax({
			  url:"${path}/device/timeGroupInstall.do",
			  type:'POST',
			  data: $("#editTime_form").serialize(),
			  dataType: 'json',
			  success: function(data){
				  if(data.message == 'successs'){
					  $("#editGuardModal").modal("hide");
			    		setTimeout(function() { // 定时器，延迟1秒后重新跳转访问
			    			document.forms[0].action="${path}/device/timeGroupInstall.do";
			    			document.forms[0].submit();
						},800);
			    		new PNotify({
							title: '操作成功',
							text: '禁用管理员成功!',
							type: 'success'
						});
				  }
			  },
			  error: function(){
				  alert("异常");
			  }
		  }); 
		  
	  });
	
    // 时间戳转换成日期格式
    function addZero(timeStamp){return timeStamp < 10 ? '0'+timeStamp : timeStamp}
    function timeFormat(timeStamp){
    	var time = new Date(timeStamp);
    	var y = time.getFullYear();
    	var m = time.getMonth() + 1;
    	var d = time.getDate();
    	var h = time.getHours();
    	var mm = time.getMinutes();
    	var s = time.getSeconds();
    	return y + '-' + addZero(m) + '-' + addZero(d) + '-' + addZero(h) + ':' + addZero(mm) + ':' + addZero(s);
    }
    
	$("#editGuardTime").click(function(){
		$("#editGuardModal").modal("show");
	});
	$("#cancelInputBox").click(function(){
		$("#editGuardModal").modal("hide");
	});
	
</script>

</html>