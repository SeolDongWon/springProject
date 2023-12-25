<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>seolMarket</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
</style>
</head>
<body class="p-0 m-0">
	<div class="container-lg">
		<header class="p-0 m-0 sticky-top">
			<div class="row  border-bottom  bg-white">
				<div class="col-4 d-flex justify-content-start align-items-center">
					<a class="btn btn-sm btn-outline-secondary" href="#">Subscribe</a>
				</div>
				<div class="col-4 text-center">
					<a href="mainPage.do"
						class="text-body-emphasis text-decoration-none">
						<h1 class="text-danger">mainPage.do</h1>
					</a>
				</div>
				<div
					class="col-4 d-flex justify-content-end align-items-center pe-2">
					<div class="navbar navbar-expand-md">
						<div class="collapse navbar-collapse">
							<c:choose>
								<c:when test="${userVO!=null}">
									<a href="userInfoPage.do" class="btn btn-sm btn-outline-secondary ms-2"> 
									<span	class="fs-6">${userVO.name}</span>
									</a>
									<a href="userLogout.do"
										class="btn btn-sm btn-outline-secondary ms-2">로그아웃</a>
								</c:when>
								<c:otherwise>
									<a href="userLoginPage.do"
										class="btn btn-sm btn-outline-secondary ms-2">로그인</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="navbar navbar-expand-md p-0 ms-3">
						<button
							class="navbar-toggler navbar-toggler-icon p-0 bg-white border-0"
							data-bs-toggle="offcanvas" data-bs-target="#sidebar"></button>
					</div>
				</div>
			</div>

		</header>
		<nav class="p-0 m-0">
			<div class="navbar navbar-expand-md p-0 m-0"
				aria-label="Tenth navbar example">
				<div class="collapse navbar-collapse" id="navbarsExample08">
					<ul class="navbar-nav fs-5 w-100 d-flex justify-content-around">
						<li class="nav-item"><a class="nav-link active"aria-current="page" href="#">Centered nav only</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"data-bs-toggle="dropdown" aria-expanded="false">boardMenu</a>
							<ul class="dropdown-menu">
								<li><a href="boardSelectListPage.do" class="dropdown-item">boardSelectListPage.do</a></li>
								<li><a href="boardSelectList.do" class="dropdown-item">boardSelectList.do</a></li>
								<li><a href="boardClassSelectList.do"class="dropdown-item">boardClassSelectList.do</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something elsehere</a></li>
							</ul>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					</ul>
				</div>
			</div>
			<div class=" offcanvas offcanvas-end p-5 w-50" tabindex="-1" id="sidebar" aria-labelledby="sidebarMenuLabel">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"aria-current="page" href="#">1111111111</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#"	data-bs-toggle="dropdown" aria-expanded="false">boardMenu</a>
							<ul class="dropdown-menu">
								<li><a href="boardSelectListPage.do" class="dropdown-item">boardSelectListPage.do</a></li>
								<li><a href="boardSelectList.do" class="dropdown-item">boardSelectList.do</a></li>
								<li><a href="boardClassSelectList.do"class="dropdown-item">boardClassSelectList.do</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something elsehere</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				</ul>
				<c:choose>
					<c:when test="${userVO!=null}">
						<a href="userInfoPage.do" class="btn btn-sm btn-outline-secondary ms-2 mb-2">${userVO.name}
						</a>
						<a href="userLogout.do"
							class="btn btn-sm btn-outline-secondary ms-2">로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href="userLoginPage.do"
							class="btn btn-sm btn-outline-secondary ms-2">로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</nav>