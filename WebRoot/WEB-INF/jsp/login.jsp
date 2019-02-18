<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/login.css" rel="stylesheet" type="text/css"
	media="all">
<script type="text/javascript">
	function login() {
		document.loginForm.action="${pageContext.request.contextPath}/login.action";
		document.loginForm.submit();
	}
	</script>
</head>
<body>
	<div class="header">
		<div class="header_top">
			<span>管理员，欢迎登录</span>
			<ul class="login">
			<li class="login_top">
				<a href="${pageContext.request.contextPath}/dishes/dislayDishes.action">
					<span>返回</span>
				</a>
				</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div class="main">
		<div id="content">
			<div class="login-header">
				<div class="view view-fifth">
					<img class="img-responsive" alt=""
						src="<%=request.getContextPath()%>/img/admin.png">
					<div class="content_box-grid">
						<img src="<%=request.getContextPath()%>/img/wel.jpg">
					</div>
				</div>
			</div>
			<form action="${pageContext.request.contextPath }/login.action"
				method="post" name="loginForm">
				<div class="login-input-box">
					<span class="icon icon-user"></span> <input type="text" name="name"
						placeholder="请输入账号">
				</div>
				<div class="login-input-box">
					<span class="icon icon-password"></span> <input type="password"
						name="password" placeholder="请输入密码">
				</div>
			</form>
			<div class="remember-box"></div>
			<div class="login-button-box">
				<button onclick="login()">登录</button>

			</div>
		</div>
	</div>

</body>
</html>
