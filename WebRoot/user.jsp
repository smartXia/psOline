<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>首页</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}

#demo {
	margin-top: 20px;
	margin-bottom: 20px
}
</style>
</head>
<body>
	<!-- 导航栏  -->
	<jsp:include page="header.jsp"></jsp:include>
	<div style="background:url(./9.jpg)">
		<div style="height: 250px;"></div>
		<div class="row mx-0 justify-content-center">
			<div style="height: 30px">
				<span>人气:${user.renqi}</span> <span>积分${user.jifen}</span> <span
					style="width: 300px;display: inline-block;"></span> <span>粉丝${user.fens	}</span>
				<span>关注</span>
			</div>
		</div>
	</div>
	<div class="row mx-0 justify-content-center" style="">
		<div class="text-center" style="width: 20%;height: 200px">
			<div class="rounded-circle"
				>
				<img src="${user.logo}" class="rounded-circle"
				style="height: 130px;width: 130px;background: yellow;border: white 4px solid; display: inline-block;margin-top: -65px" />
				</div>
			<h2>${user.uname}</h2>
			<p>${user.address} | ${user.shengfen}</p>
			<div class="row mx-0 justify-content-center">
				<button type="button" class="btn btn-warning" style="width: 40%">关注</button>
				<span style="width: 10px"></span>
				<button type="button" class="btn" style="width: 40%">私信</button>
			</div>
		</div>
	</div>
	<!-- 中部导航 -->
	<div class="container text-center"
		style="margin-top: 60px;padding-bottom: 20px">
		<span
			style="margin: 20px;border-bottom: 1px solid red;padding-bottom: 20px">首页</span>
		<span style="margin: 20px;padding-bottom: 20px">推荐</span> <span
			style="margin: 20px;padding-bottom: 20px">资料</span> <span
			style="margin: 20px;padding-bottom: 20px">收藏</span> <span
			style="margin: 20px;padding-bottom: 20px">生活</span> <span
			style="margin: 20px;padding-bottom: 20px">创作历程</span>
	</div>
	<!-- 内容 -->
	<div style="background: gray;padding-top: 20px;padding-bottom: 20px">
		<div class="container">
			<div class="clearfix">
				<div class="float-left">
					<div class="card" style="width:205px;border: 0px solid">
						<img class="card-img-top"
							src="http://static.runoob.com/images/mix/img_avatar.png"
							alt="Card image" style="width:100%;height: 150px;">
						<div class="container">
							<div style="margin-top: 10px">设计大事件</div>
							<p style="color: gray;font-size: 13px">摄影-游记</p>
						</div>
						<div class="card-footer">底部</div>
					</div>
				</div>
				<div class="float-left">
					<div class="card"
						style="width:205px; margin-left: 21.2px;border: 0px solid">
						<img class="card-img-top"
							src="http://static.runoob.com/images/mix/img_avatar.png"
							alt="Card image" style="width:100%;height: 150px;">
						<div class="container">
							<div style="margin-top: 10px">设计大事件</div>
							<p style="color: gray;font-size: 13px">摄影-游记</p>
						</div>
						<div class="card-footer">底部</div>
					</div>
				</div>
				<div class="float-left">
					<div class="card"
						style="width:205px; margin-left: 21.2px;border: 0px solid">
						<img class="card-img-top"
							src="http://static.runoob.com/images/mix/img_avatar.png"
							alt="Card image" style="width:100%;height: 150px;">
						<div class="container">
							<div style="margin-top: 10px">设计大事件</div>
							<p style="color: gray;font-size: 13px">摄影-游记</p>
						</div>
						<div class="card-footer">底部</div>
					</div>
				</div>
				<div class="float-left">
					<div class="card"
						style="width:205px; margin-left: 21.2px;border: 0px solid">
						<img class="card-img-top"
							src="http://static.runoob.com/images/mix/img_avatar.png"
							alt="Card image" style="width:100%;height: 150px;">
						<div class="container">
							<div style="margin-top: 10px">设计大事件</div>
							<p style="color: gray;font-size: 13px">摄影-游记</p>
						</div>
						<div class="card-footer">底部</div>
					</div>
				</div>
				<div class="float-left">
					<div class="card"
						style="width:205px; margin-left: 21.2px;border: 0px solid">
						<img class="card-img-top"
							src="http://static.runoob.com/images/mix/img_avatar.png"
							alt="Card image" style="width:100%;height: 150px;">
						<div class="container">
							<div style="margin-top: 10px">设计大事件</div>
							<p style="color: gray;font-size: 13px">摄影-游记</p>
						</div>
						<div class="card-footer">底部</div>
					</div>
				</div>
			</div>
			<div class="row mx-0 justify-content-center" style="margin-top: 40px">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"><</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="jumbotron text-center" style="margin-bottom:0">
		<span>移动版</span> <span>关于我们</span> <span>加入站酷</span> <span>用户协议</span>
		<span>企业服务</span> <span>帮助中心</span> <span>联系我们</span> <span>中文</span>
		<span>English</span>
	</div>
</body>
</html>