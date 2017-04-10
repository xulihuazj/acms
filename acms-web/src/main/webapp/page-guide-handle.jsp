<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>登录相关问题 | 门禁管理系统</title>
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

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />

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

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Sidebar -->
			<%@ include file="/page-sidebar.jsp" %>
			<!-- End Sidebar -->

			<!-- Main Page -->
			<div class="main ">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li>
								<a href="index.html"><i class="icon fa fa-home"></i>我的管理中心</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-briefcase"></i>系统入门指南</a>
							</li>
							<li class="active">
								<i class="fa fa-list"></i>应用相关问题
							</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>系统入门指南</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="row">
					<div class="col-md-12">
						<div class="toggle" data-plugin-toggle>
							<div class="toggle">
								<label>门禁系统发展史</label>
								<div class="toggle-content">
									<p>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;门禁系统顾名思义就是对出入口通道进行管制的系统，它是在传统的门锁基础上发展而来的。传统的机械门锁仅仅是单纯的机械装置，无论结构设计多么合理，材料多么坚固，
									人们总能通过各种手段把它打开。在出入人员很多的通道（像办公大楼、酒店客房）钥匙的管理很麻烦，钥匙丢失或人员更换都要把锁和钥匙一起更换。
									为了解决这些问题，就出现了电子磁卡锁，电子密码锁，这两种锁的出现从一定程度上提高了人们对出入口通道的管理程度，使通道管理进入了电子时代，
									但随着这两种电子锁的不断应用，它们本身的缺陷就逐渐暴露，磁卡锁的问题是信息容易复制，卡片与读卡机具之间磨损大，故障率高，安全系数低。密码锁的问题是密码容易泄露，又无从查起，安全系数很低。同时这个时期的产品由于大多采用读卡部分（密码输入）与控制部分合在一起安装在门外，很容易被人在室外打开锁。这个时期的门禁系统还停留在早期不成熟阶段，因此当时的门禁系统通常被人称为电子锁，应用也不广泛。
									最近几年随着感应卡技术，生物识别技术的发展，
									门禁系统得到了飞跃式的发展，进入了成熟期，出现了感应卡式门禁系统，指纹门禁系统，虹膜门禁系统，面部识别门禁系统，
									乱序键盘门禁系统等各种技术的系统，它们在安全性，方便性，易管理性等方面都各有特长，门禁系统的应用领域也越来越广
										</p>
								</div>
							</div>
							<div class="toggle">
								<label>门禁管理系统是什么？</label>
								<div class="toggle-content">
									<p>
										出入口门禁安全管理系统是新型现代化安全管理系统，它集微机自动识别技术和现代安全管理措施为一体，
										它涉及电子，机械，光学，计算机技术，通讯技术，生物技术等诸多新技术。
										它是解决重要部门出入口实现安全防范管理的有效措施。适用各种机要部门，
										如银行、宾馆、车场管理、机房、军械库、机要室、办公间，智能化小区，工厂等。
									</p>
									</p>
								</div>
							</div>
					
							<div class="toggle">
								<label>Curabitur eget leo at imperdiet vague iaculis vitaes?</label>
								<div class="toggle-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius.
										In eu ipsum vitae velit congue iaculis vitae at risus. Nullam tortor nunc, bibendum vitae semper a, volutpat
										</p>
								</div>
							</div>
							<div class="toggle">
								<label>Curabitur eget leo at velit imperdiet vague iaculis vitaes?</label>
								<div class="toggle-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius.
									</p>
								</div>
							</div>
								<div class="toggle">
								<label>Curabitur eget leo at velit imperdiet vague iaculis vitaes?</label>
								<div class="toggle-content">
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta.
									</p>
									</p>
								</div>
							</div>
								<div class="toggle">
								<label>Curabitur eget leo at velit imperdiet vague iaculis vitaes?</label>
								<div class="toggle-content">
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta.
									</p>
									</p>
								</div>
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


	<!-- Modal Dialog -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title bk-fg-primary">Modal title</h4>
				</div>
				<div class="modal-body">
					<p class="bk-fg-danger">Here settings can be configured...</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal Dialog -->

	<div class="clearfix"></div>


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
	<script src="assets/plugins/raphael/js/raphael.min.js"></script>
	<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/js/pages/ui-elements.js"></script>

	<!-- end: JavaScript-->

</body>

</html>