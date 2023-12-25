<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav class="container-md navbar navbar-expand-lg">
		<div class="container-md p-2" style="position: relative; border: 1px dotted red; min-height: 90px">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"> </span>
			</button>
			<a class="navbar-brand ps-3 pe-5" href="mainPage.do">
				<h1>seolProject</h1>
			</a>
			<div>&nbsp;</div>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav d-flex container-fluid justify-content-around">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="mainPage.do">메인페이지</a></li>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> menu1 </a>
						<ul class="dropdown-menu">
							<li><a href="#" class="dropdown-item">menu1-1</a></li>
							<li><a href="#" class="dropdown-item">menu1-1</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a href="#" class="dropdown-item">Something</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> menu2 </a>
						<ul class="dropdown-menu">
							<li><a href="#" class="dropdown-item">menu2-1</a></li>
							<li><a href="#" class="dropdown-item">menu2-2</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a href="#" class="dropdown-item">Something</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> menu3 </a>
						<ul class="dropdown-menu">
							<li><a href="#" class="dropdown-item">menu3-1</a></li>
							<li><a href="#" class="dropdown-item">menu3-2</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a href="#" class="dropdown-item">Something</a></li>
						</ul></li>
				</ul>
				<div style="width: 200px;">&nbsp;</div>
			</div>
			<div style="position: absolute; right: 0px; top: 12px; font-size: 15px"
				class="navbar-toggler d-flex border-0">
				<c:choose>
					<c:when test="${userVO!=null}">
						<div style="display: block; padding: 0px; margin: 0px" align="right">
							<p>${userVO.name}님</p>
							<a class="headerUserLog" href="loginOutCtrl.do">
								<button class="btn btn-outline-success">로그아웃</button>
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<a class="headerUserLog" href="loginPage.do">
							<button class="btn btn-outline-success">로그인</button>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
</header>

<style>
a.headerUserLog>button{
font-size: 15px;
padding: 5px;
}
</style>