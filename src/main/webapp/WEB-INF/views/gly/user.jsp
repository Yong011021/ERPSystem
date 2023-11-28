<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
									//scroll-to appended content 
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>
</head>
<body>
	<!--header-->
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<!--aside nav-->
	<!--aside nav-->
	<jsp:include page="/WEB-INF/views/aside.jsp" />

	
<section class="rt_wrap content mCustomScrollbar">
<form action="upyh" method="post">
 <div class="rt_content">
 <input type="hidden" name="id" value="${user.id}">
      <div class="page_title">
       <h2 class="fl">请输入用户信息</h2>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">用户账号：</span>
        <input type="text" name="name" value="${user.name }" class="textbox textbox_225"  placeholder="用户账号..."/>
       
       </li>
       <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" name="password" value="${user.password }" class="textbox textbox_225"  placeholder="登录密码..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;" name="sex" >性别：</span>
        <select class="select"  name="sex">
         <option value="0" name="sex" <c:if test="${user.sex == 0}">selected</c:if> >男</option>
         <option value="1" name="sex" <c:if test="${user.sex == 1}">selected</c:if> >女</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">年龄：</span>
        <input type="text"  name="year" value="${user.year }" class="textbox textbox_225" placeholder="年龄..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">联系电话：</span>
        <input type="tel" name="phone"  value="${user.phone }" class="textbox textbox_225"  placeholder="联系电话..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;"  name="t1">角色分配：</span>
        <select class="select" name="t1">
         <option value="0" name="t1" <c:if test="${user.t1 == 0}">selected</c:if> >管理员</option>
         <option value="1" name="t1" <c:if test="${user.t1 == 1}">selected</c:if> >经理</option>
         <option value="2" name="t1" <c:if test="${user.t1 == 2}">selected</c:if> >销售</option>
         <option value="3" name="t1" <c:if test="${user.t1 == 3}">selected</c:if> >采购</option>
        </select>
       </li>
        <li>
        <span class="item_name" style="width:120px;" name="t2">验证：</span>
        <select class="select" name="t2">
         <option value="0" name="t2" <c:if test="${user.t2 == 0}">selected</c:if> >通过</option>
         <option value="1" name="t2" <c:if test="${user.t2 == 1}">selected</c:if> >不通过</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" value="更新/保存"/>
       </li>
      </ul>
 </div>
 </form>
</section>

</body>
</html>
