<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="sidebar">
		<div class="sidebar-collapse">
			<!-- Sidebar Header Logo-->
			<div class="sidebar-header">
				<img src="${path}/assets/img/xhxm.jpg" class="img-responsive" alt="河南工业大学" />
			</div>
			<!-- Sidebar Menu-->
			<div class="sidebar-menu">
				<nav id="menu" class="nav-main" role="navigation">
					<ul class="nav nav-sidebar">
						<div class="panel-body text-center">
							<div class="flag">
								<img src="${path}/basic/imgfile/header_home.png" class="img-flags" alt="学生门禁管理系统" style="margin-left: -12px;" />
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
									<a href="${path }/person/ajaxCollegeList.do"> <span class="text">全部学院</span>
									</a>
							<!-- 		<ul class="">
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
									</ul> -->
								</li>
								<li>
									<a href="${path}/person/ajaxPersonList.do"> <span class="text">全部学生</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-parent">
							<a> <i class="fa fa-list" aria-hidden="true"></i> <span>设备管理设置</span>
							</a>
							<ul class="nav nav-children">
								<li>
									<a href="${path}/device/timeGroup.do"> <span class="text">时间组设置</span>
									</a>
								</li>
									<li>
									<a href="${path}/device/ajaxDeviceList.do"> <span class="text">设备连接设置</span></a>
								</li>
							</ul>
						</li>

				<!-- 		<li class="nav-parent">
							<a> <i class="fa  fa-shield" aria-hidden="true"></i> <span>门禁权限管理</span>
							</a>
							<ul class="nav nav-children">
								<li>
									<a href="#"> <span class="text">设备权限</span>
									</a>
								</li>
								<li>
									<a href="#"> <span class="text">人员权限</span>
									</a>
								</li>
							</ul>
						</li> -->
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
									<a href="${path }/data/dataHandleList.do"> <span class="text">统计分析</span>
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
									<a > <span class="text">系统参数设置</span>
									</a>
								</li>
								<li>
									<a href="${path }/system/role/index.do"> <span class="text">角色管理</span>
									</a>
								</li>
								<li>
									<a href="${path }/system/syslog/toList.do"> <span class="text">系统日志</span>
									</a>
								</li>
								<li>
									<a href="${path }/user/system/toModifyPsd.do"> <span class="text">修改密码</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-parent">
							<a> <i class="fa fa-send-o" aria-hidden="true"></i> <span>系统入门指南</span>
							</a>
							<ul class="nav nav-children">
								<li>
									<a href="page-guide-login.jsp"> <span class="text">登录相关问题</span>
									</a>
								</li>
								<li>
									<a href="page-guide-handle.jsp"> <span class="text">应用相关管理</span>
									</a>
								</li>
								<li>
									<a href="page-guide-person.jsp"> <span class="text">人员管理相关问题</span>
									</a>
								</li>
								<li>
									<a href="page-guide-device.jsp"> <span class="text">设备管理相关问题</span>
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
					<label>总访问数</label>
					<strong>100</strong>
				</div>
				<script type="text/javascript">
							var sparklineLineVisitsData = [ 15, 16, 17, 19, 15,
									25, 23, 35, 29, 15, 30, 45 ];
						</script>
			</div>
			<ul class="sidebar-terms bk-margin-top-10">
				<li>
					<a href="#">帮助中心</a>
				</li>
				<li>
					<a href="#">关于我们</a>
				</li>
			</ul>
		</div>
		<!-- End Sidebar Footer-->
	</div>
</body>
</html>