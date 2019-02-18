<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>身份选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
</head>

<body>
	<div class="header">
		<div class="header_top">
			<span>欢迎登录</span>
			<ul class="login">
				<a href="${pageContext.request.contextPath}/dishes/dislayDishes.action">
					<li class="login_top"><span>返回</span></li>
				</a>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div class="main" align="center">
		<div class="container">
			<div class="row content_box">
				<div class="col-md-9">
					<ul class="feature">
						<h3>
							<span>请选择登录身份：</span>
						</h3>
					</ul>
					<div class="row content_bottom">
						<div class="col-md-3">
							<div class="content_box">
								<a href="${pageContext.request.contextPath }/login.action">
									<div class="view view-fifth">
										<img class="img-responsive" alt=""
											src="<%=request.getContextPath()%>/img/admin.png">
										<div class="content_box-grid">
											<p class="m_1">管理员</p>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-3">
							<div class="content_box">
								<a href="${pageContext.request.contextPath }/loginWaiter.action">
									<div class="view view-fifth">
										<img class="img-responsive" alt=""
											src="<%=request.getContextPath()%>/img/waiter.jpg">
										<div class="content_box-grid">
											<p class="m_1">服务员</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
