<%@ page language="java" errorPage="/404.jsp" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left" style="padding-top: 0px auto;">
				<li class="visible-md visible-lg">
					<a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a>
				</li>
				<li class="visible-xs visible-sm">
					<a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a>
				</li>
			</ul>
			<!-- Navbar Left -->
			<div class="navbar-left">
				<!-- Search Form -->
				<form class="search navbar-form" style="padding-top: 0px auto;">
					<div class="input-group input-search">
						<input type="text" class="form-control " style="padding-bottom: 10px;" name="q" id="q" placeholder="请输入关键字搜索...">
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
				<!-- Notifications -->
				<ul class="notifications hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-tasks"></i> <span
							class="badge"></span>
						</a>
						<ul class="dropdown-menu update-menu" role="menu">
							<li>
								<a><i class="fa fa-database bk-fg-primary"></i> 数据 </a>
							</li>
							<li>
								<a><i class="fa fa-bar-chart-o bk-fg-primary"></i> 连接 </a>
							</li>
						</ul>
					</li>
					<li>
						<a  class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-envelope"></i> <span
							class="badge">3</span>
						</a>
						<ul class="dropdown-menu">
							<li class="dropdown-menu-header">
								<strong>信息</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 100%;">60%</div>
								</div>
							</li>
							<li class="avatar">
								<a  <img class="avatar" src="${path}/assets/img/avatar1.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span><small>1分钟前</small></span>
								</a>
							</li>
							<li class="avatar">
								<a> <img class="avatar" src="${path}/assets/img/avatar2.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span><small>3分钟前</small></span>
								</a>
							</li>
							<li class="avatar">
								<a> <img class="avatar" src="${path}/assets/img/avatar3.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										新消息
									</div> <span><small>4分钟前</small></span>
								</a>
							</li>
							<li class="dropdown-menu-footer text-center">
								<a>查看所有新消息</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown"> <i class="fa fa-bell"></i> <span
							class="badge"></span>
						</a>
						<ul class="dropdown-menu list-group">
							<li class="dropdown-menu-header">
								<strong>通知</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 100%;">60%</div>
								</div>
							</li>
							<li class="list-item">
								<a>
									<div class="pull-left">
										<i class="fa fa-envelope-o bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<h5>您暂无新信息</h5>
									</div>
								</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- End Notifications -->
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<figure class="profile-picture hidden-xs">
							<img src="${path}/assets/img/avatar.jpg" class="img-circle" alt="" />
						</figure>
						<div class="profile-info">
							<span class="name">${userName}</span> <span class="role"><i class="fa fa-circle bk-fg-success"></i>
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
								<a > <i class="fa fa-user"></i> 个人中心
								</a>
							</li>
							<li>
								<a href="${path }/user/system/toModifyPsd.do"> <i class="fa fa-unlock-alt"></i> 修改密码
								</a>
							</li>
							<li>
								<a href="${path}/logout.do"> <i class="fa fa-power-off"></i> 退出登录
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
</body>
</html>