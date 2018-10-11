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

<title>My JSP 'header.jsp' starting page</title>

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
</head>
<body>
<BODY>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark" style="line-height: 0px;height: 45px;background: red">
  <a class="navbar-brand" href="#">站酷</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="mx-auto">
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">首页</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">发现</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">同城</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">职位</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="#">活动</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">正版素材</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">课程</a>
      </li>    
    </ul>
  </div>
  </div>
	<ul class="navbar-nav">
		<c:if test="${ not empty user.uname}">
			<img src="${user.logo}" width="25"
							height="30" />
					<li class="nav-item"><a class="nav-link" href="#">&nbsp;${user.uname}</a></li>
						<li class="nav-item"><a class="nav-link" href="user/loginout.action">登出</a></li>
					</c:if>
		<c:if test="${empty user.uname}">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">登录</a></li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">注册</a></li>
			</ul>
		</c:if>

	</ul>
</nav>
</BODY>
</body>

</html>
