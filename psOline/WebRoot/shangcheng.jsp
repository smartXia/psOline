<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="images/bitbug_favicon.ico" />
<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>


<!-- <script type="text/javascript" src="js/select.js"></script> -->
<link rel="stylesheet" type="text/css" href="css/select.css">
<link rel="stylesheet" type="text/css" href="css/zixu.css" />


</head>
<body>

	<jsp:include page="respect.jsp"></jsp:include>
	<jsp:include page="qqfloat.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>

	<ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>功能：</dt>
				<dd class="select-all selected">
					<a href="RobotInfoListAll.action">全部</a>
				</dd>
				<dd class="select-all selected">平面 UI 网页 插画 动漫 摄影 空间 工业/产品 三维
					影视 手工艺 纯技术 服装 其他 自定义</dd>
				<c:forEach items="${robotTypesList}" var="type" varStatus="ss">
					<dd>
						平面 UI 网页 插画 动漫 摄影 空间 工业/产品 三维 影视 手工艺 纯技术 服装 其他 自定义 <a
							href="searchByType.action?typeName=${type.typeName}" id="">${type.typeName}${ss.count}</a>
						平面 UI 网页 插画 动漫 摄影 空间 工业/产品 三维 影视 手工艺 纯技术 服装 其他 自定义
					</dd>
				</c:forEach>

			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>厂商：</dt>
				<dd class="select-all selected">
					<a href="RobotInfoListAll.action">全部</a>
				</dd>
				<dd class="select-all selected">
					首页 推荐 资料 收藏 生活 创作历程
				</dd>
				
				<c:forEach items="${robotComList}" var="robotComList" varStatus="cc">
					<dd>
						<a
							href="searchByCom.action?companyName=${robotComList.companyName}">${robotComList.companyName}${cc.count}</a>
					</dd>

				</c:forEach>

			</dl>
		</li>

		<li class="select-result">
			<form action="searchByuser2.action" method="post">
				<dl>
					<dt>输入条件：</dt>
					<!-- 	<dd class="select-no">暂时没有选择过滤条件</dd> -->

					<dd>
						<input type="text" name="anyword" placeholder="输入任意字符匹配商品" />
					</dd>
					<dd>
						<input type="submit" value="点击搜索" />
					</dd>

				</dl>
			</form>
			<form action="searchByuser1.action" method="post">
				<dl>
					<dt>自定义搜索：</dt>
					<dd>
						功能 <select name="robotType">

							<c:forEach items="${robotTypesList}" var="robotTypesList"
								varStatus="ss">
								<option value="${robotTypesList.typeName}">${robotTypesList.typeName}</option>
							</c:forEach>


						</select>
					</dd>

					<dd>
						品牌 <select name="robotCompany">
							<c:forEach items="${robotComList}" var="robotComList"
								varStatus="ss">
								<option value="${robotComList.companyName}">${robotComList.companyName}</option>
							</c:forEach>
						</select>
					</dd>

					<dd>
						价格 <input type="text" name="robotPrice1" size="5" value="0">元-
						<select name="robotPrice2">

							<option value="1000">1000</option>

							<option value="2000">2000</option>
							<option value="5000">5000</option>
							<option value="10000">10000</option>
							<option value="20000">20000</option>
						</select> 元

					</dd>
					<dd>
						<input type="submit" value="点击搜索" />
					</dd>

				</dl>
				<dl class="selectByuser">
					<dd>搜索条件：</dd>
					<dd>
						<a>功能-<strong><font color="	#800000" size="2">${robotInfo.robotType}</font>
						</strong>
						</a>
					</dd>
					<dd>
						<a>品牌-<strong><font color="	#800000" size="2">${robotInfo.robotCompany}</font>
						</strong>
						</a>
					</dd>
					<dd>
						<a>价格<strong><font color="#800000" size="2">${robotPrice1}~${robotPrice2}</font>
						</strong>
						</a>
					</dd>
					<dd>
						<a>其他- <strong><font color="#800000" size="2">${anyword}</font>
						</strong>
						</a>
					</dd>

				</dl>

			</form>
		</li>
	</ul>




	<hr>

	<div class="container good">

		<c:forEach items="${searchByType}" var="searchByType">

			<div class="col-md-3 goodlist">
				<div class="goodimg">
					<a href="eachRobotInfo.action?robotId=${searchByType.robotId}"><img
						src="${searchByType.robotImage}" alt="商品图片" /> </a>
					<div class="goodname">



						<span>商品名：${searchByType.robotName} </span>
						<div class="goodprice">
							<span>价格：<font color="#FF0000">￥${searchByType.robotPrice}</font>
							</span>
						</div>
						<div class="goodinfo">
							<span>余货：<font color="#00BFFF">${searchByType.robotCount}件</font>
							</span>
						</div>

						<div class="goodtype">
							<span>功能：${searchByType.robotType}</span>
						</div>
						<div class="goodcompany">
							<span>生产商：${searchByType.robotCompany}</span>
						</div>
					</div>
				</div>

			</div>

		</c:forEach>


		<c:forEach items="${RobotInfoListAll}" var="RobotInfoListAll">
			<div class="col-md-3 goodlist">
				<div class="goodimg">
					<a href="eachRobotInfo.action?robotId=${RobotInfoListAll.robotId}"><img
						src="${RobotInfoListAll.robotImage}" alt="商品图片" /> </a>
					<div class="goodname">
						<span>商品名：${RobotInfoListAll.robotName} </span>
						<div class="goodprice">
							<span>价格：<font color="#FF0000">￥${RobotInfoListAll.robotPrice}</font>
							</span>
						</div>
						<div class="goodinfo">
							<span>余货：<font color="#00BFFF">${RobotInfoListAll.robotCount}件</font>
							</span>
						</div>
						<div class="goodtype">
							<span>功能：${RobotInfoListAll.robotType}</span>
						</div>
						<div class="goodcompany">
							<span>生产商：${RobotInfoListAll.robotCompany}</span>
						</div>
					</div>
				</div>

			</div>

		</c:forEach>

		<c:forEach items="${searchByCom}" var="searchByCom">

			<div class="col-md-3 goodlist">
				<div class="goodimg">
					<a href="eachRobotInfo.action?robotId=${searchByCom.robotId}"><img
						src="${searchByCom.robotImage}" alt="商品图片" /> </a>
					<div class="goodname">
						<span>商品名：${searchByCom.robotName} </span>
						<div class="goodprice">
							<span>价格：<font color="#FF0000">￥${searchByCom.robotPrice}</font>
							</span>
						</div>
						<div class="goodinfo">
							<span>余货：<font color="#00BFFF">${searchByCom.robotCount}件</font>
							</span>
						</div>
						<div class="goodtype">
							<span>功能：${searchByCom.robotType}</span>
						</div>
						<div class="goodcompany">
							<span>生产商：${searchByCom.robotCompany}</span>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>


		<c:forEach items="${searchByuser1List}" var="searchByuser1List">

			<div class="col-md-3 goodlist">
				<div class="goodimg">
					<a href="eachRobotInfo.action?robotId=${searchByuser1List.robotId}"><img
						src="${searchByuser1List.robotImage}" alt="商品图片" /> </a>
					<div class="goodname">
						<span>商品名：${searchByuser1List.robotName} </span>
						<div class="goodprice">
							<span>价格：<font color="#FF0000">￥${searchByuser1List.robotPrice}</font>
							</span>
						</div>
						<div class="goodinfo">
							<span>余货：<font color="#00BFFF">${searchByuser1List.robotCount}件</font>
							</span>
						</div>
						<div class="goodtype">
							<span>功能：${searchByuser1List.robotType}</span>
						</div>
						<div class="goodcompany">
							<span>生产商：${searchByuser1List.robotCompany}</span>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
		<c:forEach items="${searchByuser2List}" var="searchByuser2List">
			<div class="col-md-3 goodlist">
				<div class="goodimg">
					<a href="eachRobotInfo.action?robotId=${searchByuser2List.robotId}"><img
						src="${searchByuser2List.robotImage}" alt="商品图片" /> </a>
					<div class="goodname">
						<span>商品名：${searchByuser2List.robotName} </span>
						<div class="goodprice">
							<span>价格：<font color="#FF0000">￥${searchByuser2List.robotPrice}</font>
							</span>
						</div>
						<div class="goodinfo">
							<span>余货：<font color="#00BFFF">${searchByuser2List.robotCount}件</font>
							</span>
						</div>
						<div class="goodtype">
							<span>功能：${searchByuser2List.robotType}</span>
						</div>
						<div class="goodcompany">
							<span>生产商：${searchByuser2List.robotCompany}</span>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
		<%-- 	<c:if test="${empty searchByuser2List}">
			<div id="error" style="">
				<img src="images/404.png"></img> <span>没有符合条件选项</span>
			</div>
		</c:if> --%>
	</div>

	<div class="footer">6789网址导航 联系我们 意见反馈 收录申请 主页篡改举报 苏ICP备16021905号
		苏公网安备 32082902000122号 淮安市沙磊网络科技有限公司</div>
</body>
</html>
