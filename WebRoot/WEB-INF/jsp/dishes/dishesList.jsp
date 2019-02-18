<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜品列表</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<link href="${path}/css/style.css" rel="stylesheet" type="text/css"
	media="all">
<link href="${path}/css/login.css" rel="stylesheet" type="text/css"
	media="all">
<script type="text/javascript">
function deleteDishes() {
	//提交form
	document.dishesForm.action="${pageContext.request.contextPath }/dishes/deleteDishes.action";
	document.dishesForm.submit();
}

function queryDishes() {
	//提交form
	document.dishesForm.action="${pageContext.request.contextPath }/dishes/queryDishes.action";
	document.dishesForm.submit();
}
function insertDishes() {
	//提交form
	document.dishesForm.action="${pageContext.request.contextPath }/dishes/insertDishes.action";
	document.dishesForm.submit();
}
</script>
</head>
<body>
	<div class="header">
		<div class="header_top">
			<span>${name}:欢迎光临</span>
			<ul class="login">
				<li class="login_top">
				<li class="sign"><a
					href="${pageContext.request.contextPath }/logout.action"> <img
						src="<%=request.getContextPath()%>/img/lock.png" /> <span>退出</span>
				</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<form
		action="${pageContext.request.contextPath }/dishes/queryDishes.action"
		method="post" name="dishesForm">

<center>
		<div>
		菜品名称：<input type="text" name="dishWaiter.name" placeholder="请输入菜品名称，点击查询" />

		<br>
			<button onclick="queryDishes()">查询</button>
			<button onclick="deleteDishes()">批量删除</button>
			<button onclick="insertDishes()">增加</button>

		</div>

		菜品列表：</center>
		<div class="row content_bottom">
			<c:forEach items="${dishesList }" var="dish">
				<div class="col-md-3">
					<div class="content_box">
						<div class="view view-fifth">
							<c:if test="${dish.pitcure !=null}">
								<img class="img-responsive" src="/pic/${dish.pitcure}" width=100
									height=100 />
								<br />
							</c:if>
							<c:if test="${dish.pitcure ==null}">
					暂无图片
					</c:if>
							<div class="content_box-grid">
								<p class="m_1">
									<input type="checkbox" name="dishes_id" value="${dish.id}" />
									<span class="actual">${dish.id}</span> <span class="actual">${dish.name}</span>
									<span class="actual">${dish.type}</span>
								</p>
								<div class="price">
									原价: <span class="actual">${dish.normal_price }</span>
								</div>
								<div class="price">
									<c:if test="${dish.discount_price!=null}">
												折扣价: <span class="actual">${dish.discount_price } </span>
									</c:if>
									<c:if test="${dish.discount_price==null}">暂无折扣</c:if>

								</div>
								<div>
									<a
										href="${pageContext.request.contextPath }/dishes/editDishes.action?id=${dish.id}">修改</a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</form>
</body>
</html>