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
  <div class="add">
    <p id="w">33</p>
    <p id="h">33</p>
  </div>
  <div class="screenSize">
    <span id="containerWidth">width=</span>
    <span id="containerHight">hight=</span>
  </div>
  <div class="container-md" id="bodyContainer">
    <%@ include file="layout/header.jsp" %>
    <main>
      <aside id="aside">
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. </p>
        <p>Qui molestiae suscipit veniam nisi deserunt rem inventore dolorum doloribus, beatae ipsam nemo atque provident illum rerum facere amet obcaecati. Suscipit, fugit?</p>
      </aside>
      <section>
        <!-- 콘텐츠 시작 -->
        <article>
        </article>
        <!-- 콘텐츠 끝-->
      </section>
    </main>
    <%@ include file="layout/footer.jsp" %>
  </div>
</body>
</html>