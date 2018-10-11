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

<title>My JSP 'main.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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

#demo {
	margin-top: 20px;
	margin-bottom: 20px
}
</style>
</head>

<body>
	<!-- 导航栏  -->   
 <jsp:include page="header.jsp"></jsp:include>
<!-- 首页轮播图 -->
<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">
 
  <!-- 指示符 -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
 
  <!-- 轮播图片 -->
  <div class="carousel-inner">
    <div class="carousel-item active" style="height: 300px">
      <img src="images/1.jpeg">
    </div>
    <div class="carousel-item" style="height: 300px">
      <img src="images/2.jpeg">
    </div>
    <div class="carousel-item" style="height: 300px">
      <img src="images/3.jpeg">
    </div>
  </div>
 
  <!-- 左右切换按钮 -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 
</div>
</div>
<div class="container">
	<div class="clearfix">
	<div class="float-left">
    <div class="card" style="width:210px; ">
    <img class="card-img-top" src="images/4.jpg" alt="Card image" style="width:100%;height: 168px;">
    </div>
    </div>
    <div class="float-left">
    <div class="card" style="width:210px; margin-left: 15px">
    <img class="card-img-top" src="images/5.jpg" alt="Card image" style="width:100%;height: 168px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:210px; margin-left: 15px">
    <img class="card-img-top" src="images/6.jpg" alt="Card image" style="width:100%;height: 168px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:210px; margin-left: 15px">
    <img class="card-img-top" src="images/7.jpg" alt="Card image" style="width:100%;height: 168px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:210px; margin-left: 15px">
    <img class="card-img-top" src="images/8.jpg" alt="Card image" style="width:100%;height: 168px;">
    </div>
</div>
</div>
</div>
 
<!-- 中部导航 -->
<div class="container text-center" style="margin-top: 60px;padding-bottom: 20px">
  <span style="margin: 20px;border-bottom: 1px solid red;padding-bottom: 20px">首页推荐</span> <span style="margin: 20px;padding-bottom: 20px">最新发布</span> <span style="margin: 20px;padding-bottom: 20px">上升最快</span>
</div>
<!-- 内容 -->
<div style="background: gray;padding-top: 20px;padding-bottom: 20px">
<div class="container">
	<div class="clearfix">
	<div class="float-left">
    <div class="card" style="width:205px;border: 0px solid">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    <div class="container">
    	<div style="margin-top: 10px">设计大事件</div>
    	<p style="color: gray;font-size: 13px">摄影-游记</p>
    </div>
    <div class="card-footer">底部</div>
    </div>
    </div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px;border: 0px solid">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
        <div class="container">
    	<div style="margin-top: 10px">设计大事件</div>
    	<p style="color: gray;font-size: 13px">摄影-游记</p>
    </div>
    <div class="card-footer">底部</div>
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px;border: 0px solid">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
        <div class="container">
    	<div style="margin-top: 10px">设计大事件</div>
    	<p style="color: gray;font-size: 13px">摄影-游记</p>
    </div>
    <div class="card-footer">底部</div>
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px;border: 0px solid">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
        <div class="container">
    	<div style="margin-top: 10px">设计大事件</div>
    	<p style="color: gray;font-size: 13px">摄影-游记</p>
    </div>
    <div class="card-footer">底部</div>
    </div>
</div> 
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px;border: 0px solid">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
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

<div class="container">
<div class="jumbotron" style="margin-top:20px;margin-bottom: 20px">
 
</div>
</div>
<!--    猜你喜欢  -->         
<div class="container" style="margin-bottom: 50px">
	<div class="clearfix">
	<div class="float-left">
    <div class="card" style="width:205px; ">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    </div>
    </div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    </div>
</div>
    <div class="float-left">
    <div class="card" style="width:205px; margin-left: 21.2px">
    <img class="card-img-top" src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%;height: 150px;">
    </div>
</div>
</div>
</div>
</div>


<div class="jumbotron text-center" style="margin-bottom:0">
  <span>移动版</span> <span>关于我们</span> <span>加入站酷</span> <span>用户协议</span> <span>企业服务</span> <span>帮助中心</span> <span>联系我们</span> <span>中文</span> <span>English</span>
</div>

</body>
</html>
