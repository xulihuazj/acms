<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div id="footer" style="background: #1a8fb4; height: 45px;">
		<ul>
			<li>
				<div class="title">Memory</div>
				<div class="bar">
					<div class="progress light progress-sm  progress-striped active">
						<div class="progress-bar progress-squared progress-bar-success" role="progressbar" aria-valuenow="60"
							aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>
					</div>
				</div>
				<div class="desc">4GB of 8GB</div>
			</li>
			<li>
				<div class="title">HDD</div>
				<div class="bar">
					<div class="progress light progress-sm  progress-striped active">
						<div class="progress-bar progress-squared progress-bar-primary" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="100" style="width: 40%;">40%</div>
					</div>
				</div>
				<div class="desc">250GB of 1TB</div>
			</li>
			<li>
				<div class="title">SSD</div>
				<div class="bar">
					<div class="progress light progress-sm  progress-striped active">
						<div class="progress-bar progress-squared progress-bar-warning" role="progressbar" aria-valuenow="70"
							aria-valuemin="0" aria-valuemax="100" style="width: 70%;">70%</div>
					</div>
				</div>
				<div class="desc">700GB of 1TB</div>
			</li>
		</ul>
	</div>
</body>
</html>