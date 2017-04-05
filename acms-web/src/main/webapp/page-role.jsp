<!-- 角色管理 --><!-- 数据统计 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>学生门禁管理系统</title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Import google fonts -->
<!-- <link href='http://fonts.useso.com/css?family=Titillium+Web' rel='stylesheet' type='text/css'> -->
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
<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Plugins CSS-->
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
<link href="assets/plugins/jqvmap/jqvmap.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/zlight.menu.css" media="screen">
<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />
<!-- end: CSS file-->

<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
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
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg">
					<a href="#" id="main-menu-toggle"> <i class="fa fa-th-large" style="color: #428bca;"></i>
					</a>
				</li>
				<li class="visible-xs visible-sm">
					<a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i>
					</a>
				</li>
			</ul>
			<!-- Navbar Left -->
			<div class="navbar-left">
				<!-- 搜索框... -->
				<form class="search navbar-form">
					<div class="input-group input-search">
						<input type="text" class="form-control bk-radius" name="searchKey" id="searchKey" placeholder="搜索...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- 消息栏 -->
				<ul class="notifications hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-tasks"></i>
							 <span class="badge">99</span>
						</a>
						<ul class="dropdown-menu update-menu" role="menu">
							<li>
								<a href="#"> <i class="fa fa-database bk-fg-primary"></i> Database
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-bar-chart-o bk-fg-primary"></i> Connection
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-bell bk-fg-primary"></i> Notification
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-envelope bk-fg-primary"></i> Message
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-credit-card bk-fg-primary"></i> Invoices
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-folder bk-fg-primary"></i> Directories
								</a>
							</li>
							<li>
								<a href="#"> <i class="fa fa-users bk-fg-primary"></i> Users
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-envelope"></i> <span
							class="badge">5</span>
						</a>
						<!-- 信息 -->
						<ul class="dropdown-menu">
							<li class="dropdown-menu-header">
								<strong>Messages</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li class="avatar">
								<a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar1.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span> <small>1 minute ago</small>
								</span>
								</a>
							</li>
							<li class="avatar">
								<a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar2.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span> <small>3 minute ago</small>
								</span>
								</a>
							</li>
							<li class="avatar">
								<a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar3.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span> <small>4 minute ago</small>
								</span>
								</a>
							</li>
							<li class="dropdown-menu-footer text-center">
								<a href="page-inbox.html">查看所有新消息</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-bell"></i> <span
							class="badge">3</span>
						</a>
						<ul class="dropdown-menu list-group">
							<li class="dropdown-menu-header">
								<strong>通知</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li class="list-item">
								<a href="page-inbox.html">
									<div class="pull-left">
										<i class="fa fa-envelope-o bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Unread Message</div>
										<h6>You have 10 unread message</h6>
									</div>
								</a>
							</li>
							<li class="list-item">
								<a href="#">
									<div class="pull-left">
										<i class="fa fa-cogs bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>New Settings</div>
										<h6>There are new settings available</h6>
									</div>
								</a>
							</li>
							<li class="list-item">
								<a href="#">
									<div class="pull-left">
										<i class="fa fa-fire bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Update</div>
										<h6>There are new updates available</h6>
									</div>
								</a>
							</li>
							<li class="list-item-last">
								<a href="#">
									<h6>Unread notifications</h6> <span class="badge">15</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- End 消息栏 -->
				<!-- START 用户栏 -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <figure class="profile-picture hidden-xs">
						<img src="assets/img/avatar.jpg" class="img-circle" alt="" /> </figure>
						<div class="profile-info">
							<span class="name" value="${username}">xulihua</span> <span class="role"> <i class="fa fa-circle bk-fg-success"></i> Admin
							</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 100%;">60%</div>
								</div>
							</li>
							<li>
								<a href="page-profile.jsp"> <i class="fa fa-user"></i> 个人中心
								</a>
							</li>
							<li>
								<a href="page-password.jsp"> <i class="fa fa-unlock-alt"></i> 修改密码
								</a>
							</li>
							<li>
								<a href="${base}/"> <i class="fa fa-wrench"></i> 系统设置
								</a>
							</li>
							<li>
								<a href="${base}/logout.do"> <i class="fa fa-power-off"></i> 退出登录
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- End 用户栏 -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	
	<!-- <div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">免费网站模板</a>
	</div> -->

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- START 左侧导航栏 -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="assets/img/xhxm.jpg" class="img-responsive" alt="河南工业大学" />
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
							<li class="active">
								<a href="homepage.jsp"> <i class="fa fa-institution" aria-hidden="true"></i> <span>管理中心</span>
								</a>
							</li>

							<li class="nav-parent">
								<a> <i class="fa fa-tasks" aria-hidden="true"></i> <span>人员信息管理</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">全部学院</span>
										</a>
										<ul class="">
											<li>
												<a href="#"> <span class="text">电气工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">粮油食品学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">生物工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">土木建筑学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">化学化工学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">材料科学与工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text"> 管 理 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text"> 理 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text"> 法 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">设计艺术学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">中英国际学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text"> 体育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">艺术教育中心</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">机电工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">信息科学与工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">经济贸易学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text"> 外 语 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">新闻与传播学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">国际教育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">继续教育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">马克思主义学院</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#"> <span class="text">全部专业</span>
										</a>
										<ul>
											<li>
												<a href="#"> <span class="text"> </span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#"> <span class="text">全部学生</span>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-parent">
								<a> <i class="fa fa-list" aria-hidden="true"></i> <span>设备管理设置</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">基本设置</span>
										</a>
							<!-- 				 <li class="zlight-dropdown"> <a href="#">Dropdown <i></i></a>
								                <ul class="zlight-submenu">	
								                  <li><a href="#" class="text">Link 1</a></li>
								                  <li><a href="#" class="text">Link 2</a></li>
								                  <li><a href="#" class="text">Link 3</a></li>
								                  <li class="zlight-dropdown"> <a href="#">Dropdown <i class="icon-angle-right"></i></a>
							                    	<ul class="zlight-submenu">
								                      <li><a href="#" class="text">Link 1</a></li>
								                      <li><a href="#" class="text">Link 2</a></li>
								                      <li><a href="#" class="text">Link 3</a></li>
								                      <li><a href="#" class="text">Link 4</a></li>
							                   		 </ul>
								                  </li>
								                </ul>
								             </li> -->
						               <ul class=""  style="position: absolute;top:0px;left:140px; z-index:9999;">	
							                  <li><a href="#" class="text">Link 1</a></li>
							                  <li><a href="#" class="text">Link 2</a></li>
							                  <li><a href="#" class="text">Link 3</a></li>
						                </ul>
									</li>
									<li>
										<a href="#"> <span class="text">设备操作</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">时间组设置</span>
										</a>
									</li>
									<li>
										<a href="deviceattach.htmlfs"> <span class="text">设备连接设置</span>
										</a>
									</li>
								</ul>
							</li>

							<li class="nav-parent">
								<a> <i class="fa  fa-shield" aria-hidden="true"></i> <span>门禁权限管理</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">设置</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">设置</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">设置</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">设置</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">设置</span>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-parent">
								<a> <i class="fa fa-retweet" aria-hidden="true"></i> <span>数据分析管理</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">数据验证</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">实时监控</span>
										</a>
									</li>
									<li>
										<a href="page-statistics.jsp"> <span class="text">统计分析</span>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-parent">
								<a> <i class="fa fa-exchange" aria-hidden="true"></i> <span>门禁出入日志</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">全部学院</span>
										</a>
										<ul class="">
											<li>
												<a href="#"> <span class="text">电气工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">粮油食品学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">生物工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">土木建筑学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">化学化工学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">材料科学与工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">管 理 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">理 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">法 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">设计艺术学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">中英国际学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">体育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">艺术教育中心</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">机电工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">信息科学与工程学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">经济贸易学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">外 语 学 院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">新闻与传播学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">国际教育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">继续教育学院</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">马克思主义学院</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#"> <span class="text" id="item">全部宿舍</span>
										</a>
										<ul class="nav" style="display: none;">
											<li>
												<a href="#"> <span class="text">学生公寓A区</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">学生公寓B区</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">学生公寓C区</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">学生公寓D区</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">学生公寓E区</span>
												</a>
											</li>
											<li>
												<a href="#"> <span class="text">学生公寓F区</span>
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="nav-parent">
								<a> <i class="fa fa-cog" aria-hidden="true"></i> <span>系统用户管理</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">系统参数设置</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">管理员管理</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">角色管理</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">系统日志</span>
										</a>
									</li>
									<li>
										<a href="page-password.jsp"> <span class="text">修改密码</span>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-parent">
								<a> <i class="fa fa-send-o" aria-hidden="true"></i> <span>系统入门指南</span>
								</a>
								<ul class="nav nav-children">
									<li>
										<a href="#"> <span class="text">登录相关问题</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">应用相关管理</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">人员管理相关问题</span>
										</a>
									</li>
									<li>
										<a href="#"> <span class="text">设备管理相关问题</span>
										</a>
									</li>
								</ul>
							</li>
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
							<label>New Visits</label>
							<strong>70,79%</strong>
						</div>
						<script type="text/javascript">
							var sparklineLineVisitsData = [ 15, 16, 17, 19, 15,
									25, 23, 35, 29, 15, 30, 45 ];
						</script>
					</div>
					<ul class="sidebar-terms bk-margin-top-10">
						<li>
							<a href="#">Terms</a>
						</li>
						<li>
							<a href="#">Privacy</a>
						</li>
						<li>
							<a href="#">Help</a>
						</li>
						<li>
							<a href="#">About</a>
						</li>
					</ul>
				</div>
				<!-- End Sidebar Footer-->
			</div>
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
						</ol>
					</div>
					<div class="pull-right">
						<h2>管理中心</h2>
					</div>
				</div>
				<!-- End 面包屑 -->
				
				<div class="row">
					<div class="">
		<form id="frm">
			<div class="overflowh">
				<div class="pull-left">
					<div class="form-group">
						<button type="button" class="btn btn-primary"  onclick="add()">添加</button>
					</div>
				</div>
				<div class="form-group pull-right">
					<input type="text" class="form-control inputw" name="searchKey" id="searchKey" reg="specialchar2"  placeholder="输入名称或创建者进行搜索" />
					<button type="button" class="btn btn-primary" id = "btn-search-down"><div class="btn-search">搜索</div></button>
				</div>
			</div>
		</form>
	</div>
					<div class="col-lg-12">
					
						<div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h6>
									<i class="fa fa-table red"></i><span class="break"></span>管理员管理
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a> <a href="#" class="btn-close"><i
										class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>序号</th>
												<th>角色名称</th>
												<th>角色类型</th>
												<th>备注</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Developer</td>
												<td>2563$</td>
												<td>2563$</td>
												<td>
													<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">啦啦</span>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td>SEO</td>
												<td>5000$</td>
												<td>5000$</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">啦啦</span>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Photographer</td>
												<td>Photographer</td>
												<td>1269$</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">啦啦</span>
												</td>
											</tr>
											<tr>
												<td>4</td>
												<td>Project manger</td>
												<td>6253$</td>
												<td>6253$</td>
												<td>
														<span class="label label-success">启用</span>
													<span class="label label-danger">删除</span>
													<span class="label label-warning">禁用</span>
													<span class="label label-default">啦啦</span>
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

				<!-- START 底部(隐藏的内容栏目) -->
				<div id="footer"></div>
				<!-- End 底部(隐藏的内容栏目)-->
			</div>
		</div>
		<!--/container-->
	</div>

		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script><!-- jquery过渡插件 -->
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>
		<script src="assets/vendor/js/pace.min.js"></script><!-- 进度条组件 -->

		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
		<script src="assets/plugins/jquery/js/jquery.zlight.menu.1.0.min.js"></script>
		<script src="assets/plugins/jquery/js/respond.min.js"></script>

		<!-- Theme JS -->
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>

		<!-- Pages JS -->
		<script src="assets/js/pages/table-advanced.js"></script>
		<script src="assets/js/pages/index.js"></script>
		<script src="assets/js/pages/common.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#zlight-nav').zlightMenu();
			});
			$("#item").hover(function() {
				$(this).addClass("layer");
			}, function() {
				$(this).removeClass("layer");
			});
		</script>
		<style type="text/css">
.subitem {
	width: 300px;
	background: #fff;
	border: solid 1px #3299fd;
	border-left: none;
	font-family: "微软雅黑";
	position: absolute;
	left: 150px;
	_left: 228px;
	top: -100px;
	z-index: 99999;
	min-height: 60px;
	height: auto !important;
	height: 50px;
	padding: 5px 10px 15px 10px;
	position: absolute;
	display: block;
}
</style>
		<!-- end: JavaScript-->
</body>

</html>