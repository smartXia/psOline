<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'loginByUser.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/vue/2.4.2/vue.min.js"></script>
<script
	src="https://cdn.bootcss.com/vue-resource/1.5.1/vue-resource.min.js"></script> 
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <!-- <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<script src="js/vue.min.js"></script>
<script
	src="js/vue-resource.min.js"></script>
	 -->
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
</style>
</head>
<script type="text/javascript">
	$(function() {
		$("#Login")
				.click(
						function() {
							var name = $("#usr").val();
							var pwd = $("#pwd").val();
							if (name.length == 0 && pwd.length == 0) {
								alert("用户名密码需要输入");

							} else if (name.length == 0) {
								alert("用户名需要输入");

							} else if (pwd.length == 0) {
								alert("密码需要输入");
							} else {
								$
										.ajax({
											url : "user/loginByUser.action",
											type : "POST",
											datatype : "json",//传个单值到后台
											data : {//穿多个值到前台是contentType : 'application/json;charset=utf-8',
												uname : name,//传到前台选哦用json的格式
												upwd : pwd
											},
											success : function(sss) {//接收回调函数的返回结果

												/* 	alert(sss); */
												if (sss == '') {//为空的时候用‘’号传过来
													alert("账户名或密码不正常，请重新输入");
													location.href = "loginByUser.jsp";
												} else {
													alert("欢迎" + sss.uname
															+ "登录"
															+ sss.id);
													 location.href = "user/userInfo.action";
															//定位到需要的servlet，也可以是页面

												}

											}
										});
							}
						});
	});
</script>
<body style="background:url(images/9.jpg)">
	<div class="container" style="margin-top: 20px;">
		<div class="clearfix">
			<img class="float-left" src="images/zcool_logo.svg"
				style="height: 25px">
			<div class="float-left"
				style="font-size: 26px;color: white;margin-bottom: 20px;line-height: 25px;margin-left: 10px">通行证</div>
		</div>
		<div class="row mx-0 justify-content-center">
			<div>
				<img src="./zcool_logo.svg">
			</div>
		</div>
		<div class="row mx-0 justify-content-center" style="margin-top: 10px">
			<div style="font-size: 20px;color: white">登录站酷网，与650万+
				名设计师一起交流设计、分享快乐吧！</div>
		</div>
		<div class="row mx-0 justify-content-center" style="margin-top: 30px">
			<div class="card" style="width: 33%">
				<div class="card-body">
					<h5 style="padding-bottom: 30px;margin-top: 20px">密码登录 短信登录</h5>
					<form>
						<div class="form-group" style="margin-top: 20px">
							<input type="text" class="form-control" id="usr" name="userName"
								placeholder="用户名">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="pwd" name="userPwd"
								placeholder="密码">
						</div>
						<div class="form-group">
							<button type="button" class="btn btn-primary" style="width: 100%" onclick=""
											id="Login">登录</button>
						</div>
						<div class="form-group">
							<div class="radio">
								<label><input type="radio" name="optradio">下次登录</label>
							<span class="float-right">
							<nobr><a class="nav-link" href="#">忘记密码</a>
							<a class="nav-link" href="register.jsp">注册</a>
							</nobr>
							</span>
							</div>
							<p class="text-center" style="margin-top: 40px">第三方账号登录</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- <script type="text/javascript">
		window.onload = function() {
			var vm = new Vue({
				el : '#box',
				data : {
					msg : 'Hello World!',
					names : []
				},
				methods : {
					get : function() {
						//发送get请求
						this.$http.get('http://localhost:8081/user', '123').then(function(res) {
							var thing = res.data;
							this.names = thing;
						}, function() {
							this.names = "获取失败";
						});
					}
				}
			});
		}
	</script> -->

</body>

</html>
