<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>欢迎光临</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">

</head>
<body>
	<div class="header">
		<div class="header_top">
			<span>欢迎光临</span>
			<ul class="login">
				<a href="../loginChoose.jsp">
					<li class="login_top"><i class="sign"> <img alt=""
							src="<%=request.getContextPath()%>/img/lock.png" />
					</i> <span>登录</span></li>
				</a>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div class="main">
		<div class="container">
			<div class="row content_box">
				<div class="col-md-9">
					<ul class="feature">
						<h3>
							<i class="but_arrow"> <img alt="" src="<%=request.getContextPath()%>/img/icon.png" />
							</i> <span>优惠菜品</span>
						</h3>
					</ul>
					<div class="row content_bottom">
						<c:forEach items="${dishesList }" var="dish">
						<c:if test="${dish.discount_price!=null }">
							<div class="col-md-3">
								<div class="content_box">

									<div class="view view-fifth">
										<c:if test="${dish.pitcure !=null}">
											<img class="img-responsive" src="/pic/${dish.pitcure}"
												width=100 height=100 />
											<br />
										</c:if>
										<c:if test="${dish.pitcure ==null}">
					暂无图片
					</c:if>
										<div class="content_box-grid">
											<p class="m_1">
												<span class="actual">${dish.name}</span> <span
													class="actual">${dish.type}</span>
											</p>
											<div class="price">
												原价: <span class="actual">${dish.normal_price }</span>
											</div>
											<div class="price">
												折扣价: <span class="actual">${dish.discount_price }</span>
											</div>

											<ul class="product_but">
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									</a>
								</div>
							</div>
							</c:if>
						</c:forEach>
					</div>
					<!--  -->
					<ul class="feature">
						<h3>
							<i class="arrow"> <img alt="" src="<%=request.getContextPath()%>/img/icon.png">
							</i> <span>所有菜品</span>
						</h3>
					</ul>
					<div class="row content_bottom">
						<c:forEach items="${dishesList }" var="dish">
							<div class="col-md-3">
								<div class="content_box">

									<div class="view view-fifth">
										<c:if test="${dish.pitcure !=null}">
											<img class="img-responsive" src="/pic/${dish.pitcure}"
												width=100 height=100 />
											<br />
										</c:if>
										<c:if test="${dish.pitcure ==null}">
					暂无图片
					</c:if>
										<div class="content_box-grid">
											<p class="m_1">
												<span class="actual">${dish.name}</span> <span
													class="actual">${dish.type}</span>
											</p>
											<div class="price">
												原价: <span class="actual">${dish.normal_price }</span>
											</div>
											<div class="price">
											<c:if test="${dish.discount_price!=null}">
												折扣价: <span class="actual">${dish.discount_price }</c:if>
												<c:if test="${dish.discount_price==null}">暂无折扣</c:if>
												</span>
											</div>

											<ul class="product_but">
												<div class="clear"></div>
											</ul>
										</div>
									</div>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
