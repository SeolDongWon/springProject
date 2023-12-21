<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PageForm</title>
  <%@ include file="layout/link.jsp" %>
</head>

<body onload="screanCheck();" onresize="screanCheck();">
  <%@ include file="layout/screenSize.jsp" %>
  <div class="container-md" id="bodyContainer">
    <%@ include file="layout/header.jsp" %>
    <main>
      <%@ include file="layout/aside.jsp" %>
      <section>
        <!-- 콘텐츠 시작 -->
        <article class="container-md p-1 row ms-0">
        <div id="ad" style="width: 100%; height: 500px; background-color: antiquewhite;">
          asd
        </div>
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
    <%@ include file="layout/footer.jsp" %>
  </div>
</body>
</html>