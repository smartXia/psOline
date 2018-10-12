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

<title>My JSP 'images.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="user/userphoto.action" method="post"
	enctype="multipart/form-data">
	${user.uname}
	<input type="hidden" name="uname" value="${user.uname}">
					<input type="hidden" name="id" value="${user.id}">
					<input type="hidden" name="upwd" value="${user.upwd}">
					<img src="${user.logo}" width="180px" height="180px" />
					<p class="image">
					<h5>修改上传头像</h5>
					<input type="file" class="file" name="file"
						value="${user.logo}">
					</p>
					<input type="submit" id="photo"
						onclick="if (confirm('您已经修改信息成功!')) return true; else return false;"
						value="确认修改">
				</form>
  </body>
</html>
