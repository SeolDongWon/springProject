<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>seolProject</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="css/sp_layout.css">
  <script src="sp_script.js"></script>
</head>

<body onload="screanCheck();" onresize="screanCheck();">
  <div class="add">
    <p id="w">33</p>
    <p id="h">33</p>
  </div>
  <div class="screenSize">
    <span id="containerWidth">width=</span>
    <span id="containerHight">hight=</span>
  </div>
  <div class="container-md" id="bodyContainer">
    <header>
      <nav class="container-md navbar navbar-expand-lg">
        <div class="container-md p-2" style="position: relative;">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">
            </span>
          </button>
          <a class="navbar-brand ps-3 pe-5" href="#">
            <h1>seolProject</h1>
          </a>
          <div>
            &nbsp;
          </div>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav d-flex container-fluid justify-content-around">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="mainPage.do">메인페이지</a>
              </li>
              <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  menu1
                </a>
                <ul class="dropdown-menu">
                  <li><a href="#" class="dropdown-item">menu1-1</a></li>
                  <li><a href="#" class="dropdown-item">menu1-1</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a href="#" class="dropdown-item">Something</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  menu2
                </a>
                <ul class="dropdown-menu">
                  <li><a href="#" class="dropdown-item">menu2-1</a></li>
                  <li><a href="#" class="dropdown-item">menu2-2</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a href="#" class="dropdown-item">Something</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  menu3
                </a>
                <ul class="dropdown-menu">
                  <li><a href="#" class="dropdown-item">menu3-1</a></li>
                  <li><a href="#" class="dropdown-item">menu3-2</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a href="#" class="dropdown-item">Something</a></li>
                </ul>
              </li>
            </ul>
            <div style="width: 200px;">
              &nbsp;
            </div>
          </div>
          <div style="position: absolute; right: 0px; top: 12px;" class="navbar-toggler d-flex border-0">
            <a href="loginFrom.do">
              <button class="btn btn-outline-success">로그인</button>
            </a>
          </div>
        </div>
      </nav>
    </header>
    <main>
      <aside id="aside">
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. </p>
        <p>Qui molestiae suscipit veniam nisi deserunt rem inventore dolorum doloribus, beatae ipsam nemo atque provident illum rerum facere amet obcaecati. Suscipit, fugit?</p>
      </aside>
      <section>