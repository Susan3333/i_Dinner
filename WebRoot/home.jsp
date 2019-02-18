<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<meta charset="utf-8" />
<title>欢迎光临</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="header">
		<div class="header_top">
			<span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;欢迎使用</span>
			<ul class="login">
				<a href="shop.html">
					<li class="login_top"><i class="sign"> <img alt=""
							src="img/lock.png" />
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
							<i class="but_arrow"> <img alt="" src="img/icon.png" />
							</i> <span>优惠菜品</span>
						</h3>
					</ul>
					<div class="row content_bottom">
						<div class="col-md-3">
							<div class="content_box">

								<div class="view view-fifth">
									<img class="img-responsive" alt="" src="img/p1.jpg">
									<div class="content_box-grid">
										<p class="m_1">name:</p>
										<div class="price">
											Price: <span class="actual">$12.00</span>
										</div>
										<ul class="product_but">
											<div class="clear"></div>
										</ul>
									</div>
								</div>
								</a>
							</div>
						</div>

					</div>
					<ul class="feature">
						<h3>
							<i class="arrow"> <img alt="" src="img/icon.png">
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
						</c:forEach>
					</div>
					<ul class="dc_pagination dc_paginationA dc_paginationA06">
						<li><a href="#">1</a></li>
						<li><a class="current" href="#">2</a></li>
						<li><a class="current" href="#">3</a></li>
						<li><a class="current" href="#">4</a></li>
						<li><a class="current" href="#">5</a></li>
						<li><a class="current" href="#">6</a></li>
						<li><a class="previous" href="#">Next&gt;</a></li>
						<li><a class="next" href="#">Last&gt;&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
