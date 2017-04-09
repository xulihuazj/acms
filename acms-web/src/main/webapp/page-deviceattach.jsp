<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />

<title>学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/ico/apple-touch-icon-152x152.png" />
<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css"
	rel="stylesheet" />
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/magnific-popup/css/magnific-popup.css"
	rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />
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
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i
						class="fa fa-navicon"></i></a></li>
			</ul>
			<!-- Navbar Left -->
			<div class="navbar-left">
				<!-- Search Form -->
				<form class="search navbar-form">
					<div class="input-group input-search">
						<input type="text" class="form-control bk-radius" name="q" id="q"
							placeholder="搜索..."> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Notifications -->
				<ul class="notifications hidden-xs">
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-tasks"></i> <span
							class="badge">10</span>
					</a>

						<ul class="dropdown-menu update-menu" role="menu">
							<li><a href="#"><i class="fa fa-database bk-fg-primary"></i>
									Database </a></li>
							<li><a href="#"><i
									class="fa fa-bar-chart-o bk-fg-primary"></i>Connection </a></li>
							<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i>
									Notification </a></li>
							<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i>
									Message </a></li>
							<li><a href="#"><i
									class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
							<li><a href="#"><i
									class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
							<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i>
									Directories </a></li>
							<li><a href="#"><i class="fa fa-users bk-fg-primary"></i>
									Users </a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-envelope"></i> <span
							class="badge">5</span>
					</a> <!-- 信息 -->
						<ul class="dropdown-menu">
							<li class="dropdown-menu-header"><strong>Messages</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar1.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>1 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar2.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>3 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar3.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>4 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar4.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>30 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar5.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>1 hours ago</small></span>
							</a></li>
							<li class="dropdown-menu-footer text-center"><a
								href="page-inbox.html">View all messages</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-bell"></i> <span
							class="badge">3</span>
					</a>
						<ul class="dropdown-menu list-group">
							<li class="dropdown-menu-header"><strong>Notifications</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="list-item"><a href="page-inbox.html">
									<div class="pull-left">
										<i class="fa fa-envelope-o bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Unread Message</div>
										<h6>You have 10 unread message</h6>
									</div>
							</a></li>
							<li class="list-item"><a href="#">
									<div class="pull-left">
										<i class="fa fa-cogs bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>New Settings</div>
										<h6>There are new settings available</h6>
									</div>
							</a></li>
							<li class="list-item"><a href="#">
									<div class="pull-left">
										<i class="fa fa-fire bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Update</div>
										<h6>There are new updates available</h6>
									</div>
							</a></li>
							<li class="list-item-last"><a href="#">
									<h6>Unread notifications</h6> <span class="badge">15</span>
							</a></li>
						</ul></li>
				</ul>
				<!-- End Notifications -->
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<figure class="profile-picture hidden-xs">
							<img src="assets/img/avatar.jpg" class="img-circle" alt="" />
						</figure>
						<div class="profile-info">
							<span class="name">xulihua</span> <span class="role"><i
								class="fa fa-circle bk-fg-success"></i> Admin</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-primary"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li><a href="page-profile.html"><i class="fa fa-user"></i>个人中心</a>
							</li>
							<li><a href="#"><i class="fa fa-unlock-alt"></i> 修改密码</a></li>
							<li><a href="#"><i class="fa fa-wrench"></i> 设置</a></li>

							<li><a href="page-login.html"><i class="fa fa-power-off"></i>
									退出</a></li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">免费网站模板</a>
	</div>

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- Sidebar -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="#" class="img-responsive" alt="河南工业大学" />
					</div>
					<!-- Sidebar Menu-->
					<div class="sidebar-menu">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								<div class="panel-body text-center">
									<div class="flag">
										<img src="#" class="img-flags" alt="学生门禁管理系统" />
									</div>
								</div>
								<li class="active"><a href="index.html"> <i
										class="fa fa-institution" aria-hidden="true"></i><span>管理中心</span>
								</a></li>

								<li class="nav-parent"><a> <i class="fa fa-tasks"
										aria-hidden="true"></i><span>学生信息管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">全部学院</span></a></li>
										<li><a href="#"><span class="text">全部专业</span></a></li>
										<li><a href="#"><span class="text">全部学生</span></a></li>
									</ul></li>
								<li class="nav-parent"><a> <i class="fa fa-credit-card"
										aria-hidden="true"></i><span>学生卡管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
									</ul></li>
								<li class="nav-parent"><a> <i class="fa fa-list"
										aria-hidden="true"></i><span>设备管理设置</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">基本设置</span></a></li>
										<li><a href="#"><span class="text">设备操作</span></a></li>
										<li><a href="#"><span class="text">时间组设置</span></a></li>
										<li><a href="#"><span class="text">设备连接设置</span></a></li>
									</ul></li>

								<li class="nav-parent"><a> <i class="fa  fa-shield"
										aria-hidden="true"></i><span>门禁权限管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
									</ul></li>

								<li class="nav-parent"><a> <i class="fa fa-retweet"
										aria-hidden="true"></i><span>设备数据回收</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
									</ul></li>
								<li class="nav-parent"><a> <i class="fa fa-exchange"
										aria-hidden="true"></i><span>门禁出入日志</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
										<li><a href="#"><span class="text">设置</span></a></li>
									</ul></li>
								<li class="nav-parent"><a> <i class="fa fa-cog"
										aria-hidden="true"></i><span>系统设置管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">管理员管理</span></a></li>
										<li><a href="#"><span class="text">角色管理</span></a></li>
										<li><a href="#"><span class="text">系统日志</span></a></li>
										<li><a href="#"><span class="text">修改密码</span></a></li>
									</ul></li>
								<li class="nav-parent"><a> <i class="fa fa-send-o"
										aria-hidden="true"></i><span>系统入门指南</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="#"><span class="text">登录相关问题</span></a></li>
										<li><a href="#"><span class="text">人员管理相关问题</span></a></li>
										<li><a href="#"><span class="text">设备管理相关问题</span></a></li>
										<li><a href="#"><span class="text">应用相关管理</span></a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="small-chart-visits">
						<div class="small-chart" id="sparklineLineVisits"></div>
						<div class="small-chart-info">
							<label>New Visits</label> <strong>70,79%</strong>
						</div>
						<script type="text/javascript">
								var sparklineLineVisitsData = [15, 16, 17, 19, 15, 25, 23, 35, 29, 15, 30, 45];
							</script>
					</div>
					<ul class="sidebar-terms bk-margin-top-10">
						<li><a href="#">Terms</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">About</a></li>
					</ul>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar -->

			<div class="main sidebar-minified">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="index.html"><i class="icon fa fa-home"></i>管理中心</a></li>
							<li><a href="#"><i class="fa fa-list"></i>设备管理设置</a></li>
							<li class="active"><i class="fa fa-thumbs-o-up"></i>设备连接设置</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>设备连接设置</h2>
					</div>
				</div>
				<!-- End Page Header -->

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>Basic
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<table class="table table-bordered table-striped"
									id="datatable-default">
									<thead>
										<tr>
											<th>设备编号</th>
											<th>设备序列号</th>
											<th>连接类型</th>
											<th>IP地址</th>
										</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>Trident</td>
											<td>Internet Explorer 4.0</td>
											<td>Win 95+</td>
											<td class="center hidden-phone">4</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeC">
											<td>Trident</td>
											<td>Internet Explorer 5.0</td>
											<td>Win 95+</td>
											<td class="center hidden-phone">5</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet Explorer 5.5</td>
											<td>Win 95+</td>
											<td class="center hidden-phone">5.5</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet</td>
											<td>Win 98+</td>
											<td class="center hidden-phone">6</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet Explorer 7</td>
											<td>Win XP SP2+</td>
											<td class="center hidden-phone">7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>AOL browser (AOL desktop)</td>
											<td>Win XP</td>
											<td class="center hidden-phone">6</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 1.0</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center hidden-phone">1.7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 1.5</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 2.0</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 3.0</td>
											<td>Win 2k+ / OSX.3+</td>
											<td class="center hidden-phone">1.9</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Camino 1.0</td>
											<td>OSX.2+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Camino 1.5</td>
											<td>OSX.3+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape 7.2</td>
											<td>Win 95+ / Mac OS 8.6-9.2</td>
											<td class="center hidden-phone">1.7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape Browser 8</td>
											<td>Win 98SE+</td>
											<td class="center hidden-phone">1.7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape Navigator 9</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.0</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.1</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.1</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.2</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.2</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.3</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.3</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.4</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.4</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.5</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.5</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.6</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">1.6</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.7</td>
											<td>Win 98+ / OSX.1+</td>
											<td class="center hidden-phone">1.7</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.8</td>
											<td>Win 98+ / OSX.1+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Seamonkey 1.1</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Epiphany 2.20</td>
											<td>Gnome</td>
											<td class="center hidden-phone">1.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 1.2</td>
											<td>OSX.3</td>
											<td class="center hidden-phone">125.5</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 1.3</td>
											<td>OSX.3</td>
											<td class="center hidden-phone">312.8</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 2.0</td>
											<td>OSX.4+</td>
											<td class="center hidden-phone">419.3</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 3.0</td>
											<td>OSX.4+</td>
											<td class="center hidden-phone">522.1</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>OmniWeb 5.5</td>
											<td>OSX.4+</td>
											<td class="center hidden-phone">420</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>iPod Touch / iPhone</td>
											<td>iPod</td>
											<td class="center hidden-phone">420.1</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>S60</td>
											<td>S60</td>
											<td class="center hidden-phone">413</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 7.0</td>
											<td>Win 95+ / OSX.1+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 7.5</td>
											<td>Win 95+ / OSX.2+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 8.0</td>
											<td>Win 95+ / OSX.2+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 8.5</td>
											<td>Win 95+ / OSX.2+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.0</td>
											<td>Win 95+ / OSX.3+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.2</td>
											<td>Win 88+ / OSX.3+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.5</td>
											<td>Win 88+ / OSX.3+</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera for Wii</td>
											<td>Wii</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Nokia N800</td>
											<td>N800</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Nintendo DS browser</td>
											<td>Nintendo DS</td>
											<td class="center hidden-phone">8.5</td>
											<td class="center hidden-phone">C/A<sup>1</sup></td>
										</tr>
										<tr class="gradeC">
											<td>KHTML</td>
											<td>Konqureror 3.1</td>
											<td>KDE 3.1</td>
											<td class="center hidden-phone">3.1</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
											<td>KHTML</td>
											<td>Konqureror 3.3</td>
											<td>KDE 3.3</td>
											<td class="center hidden-phone">3.3</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeA">
											<td>KHTML</td>
											<td>Konqureror 3.5</td>
											<td>KDE 3.5</td>
											<td class="center hidden-phone">3.5</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeX">
											<td>Tasman</td>
											<td>Internet Explorer 4.5</td>
											<td>Mac OS 8-9</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeC">
											<td>Tasman</td>
											<td>Internet Explorer 5.1</td>
											<td>Mac OS 7.6-9</td>
											<td class="center hidden-phone">1</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeC">
											<td>Tasman</td>
											<td>Internet Explorer 5.2</td>
											<td>Mac OS 8-X</td>
											<td class="center hidden-phone">1</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
											<td>Misc</td>
											<td>NetFront 3.1</td>
											<td>Embedded devices</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeA">
											<td>Misc</td>
											<td>NetFront 3.4</td>
											<td>Embedded devices</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">A</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Dillo 0.8</td>
											<td>Embedded devices</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Links</td>
											<td>Text only</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Lynx</td>
											<td>Text only</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">X</td>
										</tr>
										<tr class="gradeC">
											<td>Misc</td>
											<td>IE Mobile</td>
											<td>Windows Mobile 6</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeC">
											<td>Misc</td>
											<td>PSP browser</td>
											<td>PSP</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">C</td>
										</tr>
										<tr class="gradeU">
											<td>Other browsers</td>
											<td>All others</td>
											<td>-</td>
											<td class="center hidden-phone">-</td>
											<td class="center hidden-phone">U</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->

			<!-- 底部 -->
			<div id="footer">
				<ul>
					<li>
						<div class="title">Memory</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-success"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 60%;">60%</div>
							</div>
						</div>
						<div class="desc">4GB of 8GB</div>
					</li>
					<li>
						<div class="title">HDD</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%;">40%</div>
							</div>
						</div>
						<div class="desc">250GB of 1TB</div>
					</li>
					<li>
						<div class="title">SSD</div>
						<div class="bar">
							<div class="progress light progress-sm  progress-striped active">
								<div class="progress-bar progress-squared progress-bar-warning"
									role="progressbar" aria-valuenow="70" aria-valuemin="0"
									aria-valuemax="100" style="width: 70%;">70%</div>
							</div>
						</div>
						<div class="desc">700GB of 1TB</div>
					</li>
					<li>
						<div class="copyright">
							<p class="text-muted text-right">
								Fire <i class="fa fa-coffee"></i> Collect from <a href=""
									title="" target="_blank"></a> - More Templates <a href=""
									target="_blank" title=""></a>
							</p>
						</div>
					</li>
				</ul>
			</div>
			<!-- End Footer -->
		</div>
	</div>
	<!--/container-->


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
	<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script
		src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="assets/plugins/bootkit/js/bootkit.js"></script>
	<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<script src="assets/plugins/moment/js/moment.min.js"></script>
	<script src="assets/plugins/fullcalendar/js/fullcalendar.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
	<script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
	<script src="assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
	<script src="assets/plugins/chart-master/js/Chart.js"></script>
	<script src="assets/plugins/jqvmap/jquery.vmap.js"></script>
	<script src="assets/plugins/jqvmap/data/jquery.vmap.sampledata.js"></script>
	<script src="assets/plugins/jqvmap/maps/jquery.vmap.world.js"></script>
	<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/js/pages/index.js"></script>

	<!-- end: JavaScript-->

</body>

</html>