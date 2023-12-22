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
            seolProject
          </a>
          <div>
            &nbsp;
          </div>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav d-flex container-fluid justify-content-around">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">메인페이지</a>
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
            <a href="includeTest.do">
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
        <!-- 콘텐츠 시작 -->
        <div id="ad" style="width: 100%; height: 500px; background-color: antiquewhite;">
          asd
        </div>
        <article class="container-md p-1 row ms-0">
          <div id="maintab1" class="col-sm-6 p-1">
            <div class="tab-pane active" id="notice">
              <h2 class="text-center"><a href="#notice" class="nav-link text-dark">공지사항</a></h2>
              <ul class="p-2">
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Cum libero accusamus placeat
                    aliquam
                    voluptates,</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Illum laborum earum illo natus
                    cumque d</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Dolorum error soluta saepe. Nulla
                  </a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Atque eveniet ratione nemo iste,
                    dolo</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Rerum eveniet voluptas distinctio
                    dolores harum,</a></li>
              </ul>
            </div>
          </div>
          <div id="maintab2" class="col-sm-6 pt-1">
            <div class="tab-pane active" id="notice">
              <h2 class="text-center"><a href="#notice" class="nav-link text-dark">게시판</a></h2>
              <ul class="p-2">
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Cum libero accusamus placeat
                    aliquam
                    voluptates,</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Illum laborum earum illo natus
                    cumque d</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Dolorum error soluta saepe. Nulla
                  </a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Atque eveniet ratione nemo iste,
                    dolo</a></li>
                <li><a href="#" class="text-dark text-decoration-none btn  btn-light">Rerum eveniet voluptas distinctio
                    dolores harum,</a></li>
              </ul>
            </div>
          </div>
        </article>
        <!-- 콘텐츠 끝-->
      </section>
    </main>
    <footer>
      <div class=" container ">
        <div class="btn-group btn-group-sm">
          <a href=""><button type="button" class="btn  btn-light">회사소개</button></a>
          <a href=""><button type="button" class="btn  btn-light">회사소개</button></a>
          <a href=""><button type="button" class="btn  btn-light">회사소개</button></a>
          <a href=""><button type="button" class="btn  btn-light">회사소개</button></a>
        </div>
      </div>
      <div class="container ">
        <span>회사 정보 작성란</span>
      </div>
    </footer>
  </div>
</body>
<style>
body {
  margin: 0px;
  padding: 5px;
  border: 2px dotted black;
}
body>div{
  border: 2px dotted red;
}

li{
  list-style-type: none;
  padding: 5px;
  border: 1px dotted red;
}
a{
  text-decoration: none;
}

a.navbar-brand {
  /* border: 1px solid red; */
}

header>nav>div {
  /* border: 2px dotted red; */
}

header>nav>div>div {
  /* border: 1px dotted; */
}


main{
  border: 2px dotted blue;
  display: flex;
}
section{
  width: 100%;
  padding: 0px;
  margin: 0px;
  border: 2px dotted red;
}

aside{
  width: 200px;
  border: 2px dotted red;
}

article{
  border: 2px dotted red;
}

section>article>div {
 border: 2px dotted blue;
}
section>article>div>div {
  border: 2px dotted red;
}
div {
  color: black;
}

</style>

<script>
  function screanCheck() {
    document.getElementById('w').innerHTML = "<h1>화면 너비 : " + window.outerWidth + "</h1>";
    document.getElementById('h').innerHTML = "<h1>화면 높이 : " + window.outerHeight + "</h1>";

    let containDiv = document.getElementById('bodyContainer');
    document.getElementById('containerWidth').innerHTML =
        '<h1>containerWidth : ' + containDiv.clientWidth + '</h1>';
    document.getElementById('containerHight').innerHTML =
        '<h1>containerHight : ' + containDiv.clientHeight + '</h1>';
/* 
    let maintab2Div = document.getElementById('maintab2');
    document.getElementById('maintab2Width').innerHTML =
        '<h1>maintab2Width : ' + maintab2Div.clientWidth + '</h1>';
    document.getElementById('maintab2Hight').innerHTML =
        '<h1>maintab2Hight : ' + maintab2Div.clientHeight + '</h1>';
 */
    if (containDiv.clientWidth < 1140) {
        document.getElementById('aside').style.display = "none";
    } else {
        document.getElementById('aside').style.display = "";
    }

    if (containDiv.clientWidth < 740) {
        document.getElementById('maintab1').style.width = "100%";
        document.getElementById('maintab2').style.width = "100%";
    } else {
        document.getElementById('maintab1').style.width = "";
        document.getElementById('maintab2').style.width = "";
    }
}
</script>
</html>