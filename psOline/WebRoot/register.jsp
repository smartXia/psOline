<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
		$("#register")
			.click(
				function() {
					var uname = $("#uname").val();
					//	var uphone = $("#rphone").val();
					var upwd = $("#upwd").val();
					//	var uphone = document.getElementById('rphone').value;
					/* 	alert(uname);
						alert(upwd);
						alert(uphone); */
					if (uname.length == 0 || upwd.length == 0) {
						alert("太懒了就三个信息还不输入完？");
						return false;

					}
					/* if (!(/^1[34578]\d{9}$/.test(uphone))) {
						alert("手机号码有误，请重填");
						return false;

					} */
					if (upwd.length < 6) {
						alert("密码需要输入大于6位");

					} else {
						$.ajax({
							url : "user/uesrRegister.action",
							type : "POST",
							datatype : "json", //传个单值到后台
							//contentType : 'application/json;charset=utf-8',
							data : { //穿多个值到前台是contentType : 'application/json;charset=utf-8',
								"uname" : name, //传到前台选哦用json的格式
								"upwd" : pwd,
							},

							success : function(data) { //接收回调函数的返回结果
								/* 	alert(data); */
								if (data == "") { //为空的时候用‘’号传过来
									alert("用户名被占用,请重新填写！！！！");

									/* $.each(data, function(index, user) {///未实现
										alert(user.userName);//function (index, value)中index是当前元素的位置，value是值。b
									}); */
									location.href = "loginByUsers.jsp"; //定位到需要的servlet，也可以是页面s
								} else {
									alert(data.uname + "注册成功请登录；请记住密码方便下次登录");
									/* location.href = "loginusers.jsp"; */
									//alert("欢迎" + sss.userName + "登录" + sss.userId);
									/* 	location.href = "user/userInfoDetail.action?userId="
												+ sss.userId;//定位到需要的servlet，也可以是页面s */
									location.href = "user/userInfo";

								}

							}
						});
					}
				})
	});
</script>
<body>
	<div class="container">
		<div class="row mx-0 justify-content-center">
			<div style="margin-top: 100px;width: 80%">
				<div class="clearfix">
					<img class="float-left" src="images/zcool_logo.svg"
						style="height: 25px">
					<div class="float-left"
						style="font-size: 26px;margin-bottom: 20px;line-height: 25px;margin-left: 10px">通行证</div>
					<div class="float-right">已有账号，马上登录|返回站酷网</div>
				</div>
				<div class="card" style="width:100%">
					<div class="card-header"
						style="background: yellow;padding-top: 15px;padding-bottom: 5px">
						<p class="text-center" style="font-size: 24px">注册会员</p>
					</div>
					<div class="card-body">
						<div class="row mx-0 justify-content-center"
							style="margin-top: 25px">
							<form style="width: 40%" action="" method=post>
								<div class="form-group">
									<input type="text" class="form-control" id="uname"
										placeholder="用户名作为登录的唯一凭证"> <br> <input
										type="pwd" class="form-control" id="upwd"
										placeholder="密码(请输入至少6位)">
								</div>
								<div class="form-group">
									<div class="radio">
										<label><input type="radio" name="optradio">我已阅读并接受用户协议</label>
									</div>
								</div>
								<div class="form-group">
									<input type="button" class="btn btn-primary" onclick=""
										id="register" style="width: 100%" value="注册">
								</div>
								<div>使用社交账号注册</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center" style="margin-top: 20px;font-size: 14px">
			<p>京ICP备11017824号-4 / 京ICP证130164号 北京市公安局朝阳分局备案编号:110105000501</p>
			<p>Copyright © 2016-2017 ZCOOL 中文 English</p>
		</div>
	</div>


</body>
</html>
