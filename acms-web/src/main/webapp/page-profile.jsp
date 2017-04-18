<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Basic -->
<meta charset="UTF-8" />
<title>门禁系统|个人中心 </title>
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- 图标、矢量图 -->
<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />
<!-- Plugins CSS-->
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css"
	rel="stylesheet" />
<link href="assets/plugins/magnific-popup/css/magnific-popup.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
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
	<%@include file="/page-header.jsp" %>
	<!-- End: Header -->

	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">

			<!-- START 左侧导航栏 -->
			<%@ include file="page-sidebar.jsp" %>
			<!-- END 左侧导航栏 -->
			
			
			<!-- Main Page -->
			<div class="main">
				<!-- Page Header -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a href="homepage.jsp"><i class="icon fa fa-home"></i>我的管理中心</a></li>
							<li><a href="#"><i class="fa fa-file-text"></i>系统设置</a></li>
							<li class="active"><i class="fa fa-reddit"></i>个人中心</li>
						</ol>
					</div>
					<div class="pull-right">
						<h2>个人中心</h2>
					</div>
				</div>
				<!-- End Page Header -->
				<div class="row profile">
					<div class="col-lg-4 col-md-5 col-sm-5">
						<div class="panel">
							<div class="panel-body">
								<div
									class="text-left bk-bg-white bk-padding-top-40 bk-padding-bottom-10">
									<div class="row">
										<div
											class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bk-vcenter text-center">
											<div class="bk-avatar">
												<img src="assets/img/avatar.jpg" alt="头像从服务器上取出" class="img-circle bk-img-120 bk-border-light-gray bk-border-3x" />
											</div>
											<h4 class="bk-margin-top-10 bk-docs-font-weight-300"><span value="${username}">账户名</span></h4>
										</div>
										<hr class="bk-margin-off" />
									<!--  facebookj/twitter/google
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<a
												class="col-xs-4 bk-bg-white bk-fg-primary bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-facebook"></i>
											</a> <a
												class="col-xs-4 bk-bg-white bk-fg-success bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-twitter"></i>
											</a> <a
												class="col-xs-4 bk-bg-white bk-fg-danger bk-padding-top-20 bk-padding-bottom-20 text-center">
												<i class="fa fa-google-plus"></i>
											</a>
										</div> -->
										<div
											class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-left bk-vcenter text-center">
											<hr class="bk-margin-off" />
											<small>HTML: 60%</small>
											<div class="progress bk-margin-bottom-10"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-primary"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: 60%;">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
											</div>
											<small>CSS: 88%</small>
											<div class="progress bk-margin-bottom-10"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="88" aria-valuemin="0"
														aria-valuemax="100" style="width: 88%;">
														<span class="sr-only">88% Complete</span>
													</div>
												</div>
											</div>
											<small>JS: 35%</small>
											<div class="progress bk-margin-off-bottom"
												style="height: 8px;">
												<div class="progress thin progress-striped active">
													<div class="progress-bar progress-bar-success"
														role="progressbar" aria-valuenow="35" aria-valuemin="0"
														aria-valuemax="100" style="width: 35%;">
														<span class="sr-only">35% Complete</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr class="bk-margin-off" />
								<div class="bk-ltr bk-bg-white">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="bk-widget bk-border-off bk-webkit-fix">
												<div
													class="bk-bg-white text-center bk-padding-top-20 bk-padding-bottom-10">
													<div class="row">
														<div class="text-left bk-padding-left-10">
															<h4 class="bk-margin-off">普通信息</h4>
														</div>
													</div>
												</div>
												<div class="bs-example">
													<div id="carousel-example-generic3"
														class="carousel bk-carousel-fade slide"
														data-ride="carousel">
														<div class="carousel-inner">
															<div class="item">
																<a
																	class="panel-body bk-bg-white bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
																	<div
																		class="pull-left bk-margin-top-10 bk-margin-right-10">
																		<div
																			class="bk-round bk-bg-darken bk-border-off bk-icon bk-icon-default bk-bg-primary">
																			<i class="fa fa-thumbs-up"></i>
																		</div>
																	</div>
																	<h5
																		class="bk-fg-primary bk-fg-darken bk-margin-off-bottom">Position</h5>
																	<p>
																		<small>Staff Administrator</small>
																	</p>
																</a>
															</div>
															<div class="item active">
																<a
																	class="panel-body bk-bg-white bk-bg-lighten bk-padding-off-top bk-padding-off-bottom">
																	<div
																		class="pull-left bk-margin-top-10 bk-margin-right-10">
																		<div
																			class="bk-round bk-bg-darken bk-border-off bk-icon bk-icon-default bk-bg-info">
																			<i class="fa fa-building-o"></i>
																		</div>
																	</div>
																	<h5
																		class="bk-fg-info bk-fg-darken bk-margin-off-bottom">Company
																		Name</h5>
																	<p>
																		<small>AdminTemplate Inc.</small>
																	</p>
																</a>
															</div>
														</div>
														<a
															class="left carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init"
															href="#carousel-example-generic3" role="button"
															data-slide="prev"> <span
															class="fa fa-angle-left icon-prev bk-bg-very-light-gray"></span>
														</a> <a
															class="right carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init"
															href="#carousel-example-generic3" role="button"
															data-slide="next"> <span
															class="fa fa-angle-right icon-next"></span>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr class="bk-margin-off" />
								<div class="bk-ltr bk-bg-white">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div
												class="bk-bg-white text-center bk-padding-top-20 bk-padding-bottom-10">
												<div class="row">
													<div class="text-left bk-padding-left-10">
														<h4 class="bk-margin-off">地址</h4>
													</div>
												</div>
											</div>
											<div
												class="bk-bg-white bk-bg-lighten bk-padding-top-10 bk-padding-left-20">
												<div class="pull-left bk-margin-right-10">
													<div class="bk-round bk-bg-darken bk-border-off">
														<i class="fa fa-map-marker fa-2x bk-fg-danger"></i>
													</div>
												</div>
												<p class="text-left">
													<small>河南工业大学莲花街100号</small>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="bk-ltr bk-padding-bottom-20 bk-padding-left-20">
									<div class="row">
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-phone"></i> +25 2569 256
										</div>
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-tablet"></i> +62 2569 2568 256
										</div>
										<div
											class="col-12-4 col-md-12 col-sm-12 col-xs-12 bk-bg-white bk-padding-top-10">
											<i class="fa fa-envelope"></i> jhonsmith@mail.com
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-5 col-md-7 col-sm-7">
						<div class="panel">
							<div class="panel-body">
								<div class="tabs tabs-warning">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#overview" data-toggle="tab">Overview</a>
										</li>
										<li><a href="#edit" data-toggle="tab">Edit</a></li>
									</ul>
									<div class="tab-content">
										<div id="overview" class="tab-pane active">
											<div
												class="bk-bg-white bk-padding-top-10 bk-padding-bottom-10">
												<h4>Update Status</h4>
												<div class="bk-bg-white">
													<form role="form" action="javascript:">
														<input type="email" class="form-control"
															placeholder="What's on your mind?" />
													</form>
												</div>
												<div class="bk-bg-white bk-margin-15">
													<div class="btn-group">
														<button type="button" class="btn btn-link">
															<i class="fa fa-map-marker"></i>
														</button>
														<button type="button" class="btn btn-link">
															<i class="fa fa-camera"></i>
														</button>
														<button type="button" class="btn btn-link">
															<i class="fa fa-video-camera"></i>
														</button>
													</div>
													<div class="pull-right">
														<button type="button" class="btn btn-primary">
															<i class="fa fa-lightbulb-o"></i> Post
														</button>
													</div>
												</div>
											</div>
											<h5>Timeline</h5>
											<div class="timelineProfile timeline-profile">
												<div class="timeline-body">
													<div class="timeline-title">
														<h5 class="text-uppercase">March 2015</h5>
													</div>
													<ol class="timeline-items">
														<li>
															<div class="timeline-box">
																<p class="text-muted">5 months ago.</p>
																<p>
																	It's awesome when we find a good solution for our
																	projects, Fire Admin is <span class="text-primary">#awesome</span>
																</p>
															</div>
														</li>
														<li>
															<div class="timeline-box">
																<p class="text-muted">5 months ago.</p>
																<p>What is your greatest projects for your
																	Administrator?</p>
															</div>
														</li>
														<li>
															<div class="timeline-box">
																<p class="text-muted">5 months ago.</p>
																<p>Checkout! How cool is that!</p>
																<div class="img-timeline">
																	<a class="img-thumbnail lightbox"
																		href="assets/img/gallery/photo1.jpg"
																		data-plugin-options='{ "type":"image" }'> <img
																		class="img-responsive" width="215"
																		src="assets/img/gallery/photo1.jpg"> <span
																		class="zoom"> <i class="fa fa-search"></i>
																	</span>
																	</a>
																</div>
															</div>
														</li>
													</ol>
												</div>
											</div>
										</div>
										<div id="edit" class="tab-pane updateProfile">
											<form class="form-horizontal" method="get">
												<div
													class="bk-bg-white bk-padding-top-10 bk-padding-bottom-10">
													<h4>Personal Information</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileFirstName">First Name</label> <input
																type="text" class="form-control" id="profileFirstName"
																placeholder="Enter your first name" />
														</div>
														<div class="form-group">
															<label for="profileLastName">Last Name</label> <input
																type="text" class="form-control" id="profileLastName"
																placeholder="Enter your last name" />
														</div>
														<div class="form-group">
															<label for="profileAddress">Address</label> <input
																type="text" class="form-control" id="profileAddress"
																placeholder="Enter your address" />
														</div>
														<div class="form-group">
															<label for="profileCompany">Company</label> <input
																type="text" class="form-control" id="profileCompany"
																placeholder="Enter your company name" />
														</div>
													</fieldset>
													<hr />
													<h4>About Yourself</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileBio">Biographical Info</label>
															<textarea class="form-control" rows="5" id="profileBio"
																placeholder="Start typing"></textarea>
														</div>
														<div class="form-group">
															<div
																class="checkbox-custom checkbox-default bk-margin-bottom-10">
																<input type="checkbox" id="profilePublish"
																	name="profilePublish" value="profilePublish" /> <label
																	for="profilePublish"> Publish</label>
															</div>
														</div>
													</fieldset>
													<hr />
													<h4>Change Password</h4>
													<fieldset>
														<div class="form-group">
															<label for="profileNewPassword">New Password</label> <input
																type="text" class="form-control" id="profileNewPassword"
																placeholder="Type New Password" />
														</div>
														<div class="form-group">
															<label for="profileNewPasswordRepeat">Repeat New
																Password</label> <input type="text" class="form-control"
																id="profileNewPasswordRepeat"
																placeholder="Retype New Password" />
														</div>
													</fieldset>
													<div class="bk-bg-white">
														<div class="row">
															<div class="col-md-12">
																<div class="pull-right">
																	<button type="submit" class="btn btn-primary">Submit</button>
																	<button type="reset" class="btn btn-default">Reset</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-12">
						<h4>Weekly Stats</h4>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">$
											25,232</h3>
										EARNINGS
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineEarnings"></div>
											<script type="text/javascript">
													var sparklineLineEarningsData = [15, 16, 17, 19, 15, 25, 23, 35, 29, 15, 30, 45];
												</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">598</h3>
										SALE ITEMS
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineSale"></div>
											<script type="text/javascript">
													var sparklineLineSaleData = [20, 30, 15, 40, 30, 45, 60, 40, 50, 32, 65, 70];
												</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel bk-widget bk-border-off">
							<div class="panel-body bk-bg-very-light-gray">
								<div class="row bk-fg-gray">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h3
											class="bk-margin-off bk-docs-font-weight-300 bk-fg-primary">1,958</h3>
										DOWNLOAD
									</div>
									<div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
										<div class="small-chart-wrapper bk-padding-right-40">
											<div class="small-chart" id="sparklineLineDownload"></div>
											<script type="text/javascript">
													var sparklineLineDownloadData = [19, 5, 25, 40, 35, 90, 60, 70, 30, 15, 80, 90];
												</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading bk-bg-white">
								<h6>
									<span class="label label-danger bk-margin-5">165</span>Friends
								</h6>
								<div class="panel-actions">
									<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
									<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body bk-noradius">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar1.jpg" alt=""
													class="img-circle bk-img-40 bk-border-primary bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-primary bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Nullam vitae arcu in leo molestie hendrerit at quis
												sem.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar2.jpg" alt=""
													class="img-circle bk-img-40 bk-border-warning bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-warning bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Nunc vitae porttitor purus.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
								<a class="bk-bg-white bk-padding-off-top bk-padding-off-bottom">
									<div class="row">
										<div class="col-xs-3 bk-vcenter text-center bk-padding-10">
											<div class="bk-avatar">
												<img src="assets/img/avatar2.jpg" alt=""
													class="img-circle bk-img-40 bk-border-danger bk-border-2x bk-border-darken">
											</div>
										</div>
										<div class="col-xs-9 bk-vcenter">
											<h5 class="bk-fg-danger bk-fg-darken bk-margin-off-bottom">John
												Doe</h5>
											<p>Morbi interdum posuere ultricies. Aliquam sit amet
												neque nisi.</p>
										</div>
									</div>
								</a>
								<hr class="bk-margin-off">
							</div>
							<div class="panel-footer bk-bg-white">
								<div class="bk-padding-top-5 bk-padding-bottom-5 ">
									<div class="row">
										<div class="col-xs-6">
											<a href="#" class="bk-fg-textcolor"><small><i
													class="fa fa-angle-left"></i> PREVIOUS</small></a>
										</div>
										<div class="col-xs-6 text-right">
											<a href="#" class="bk-fg-textcolor"><small>NEXT <i
													class="fa fa-angle-right"></i></small></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<h4>Last Projects</h4>
						<ul class="bulletList">
							<li class="red"><span class="title">Fire Admin
									Template</span> <span class="description truncate">Lorem ipsom
									dolor sit.</span></li>
							<li class="green"><span class="title">HTML5 Template</span>
								<span class="description truncate">Lorem ipsom dolor sit
									amet</span></li>
							<li class="blue"><span class="title">HTML5 Template</span> <span
								class="description truncate">Lorem ipsom dolor sit.</span></li>
							<li class="orange"><span class="title">Template</span> <span
								class="description truncate">Lorem ipsom dolor sit.</span></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- End Main Page -->

			<!-- Footer -->
			<%@include file="/page-footer.jsp" %>
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
	<script src="assets/plugins/moment/js/moment.min.js"></script>
	<script src="assets/plugins/magnific-popup/js/magnific-popup.js"></script>
	<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script src="assets/js/pages/profile.js"></script>

	<!-- end: JavaScript-->

</body>

</html>