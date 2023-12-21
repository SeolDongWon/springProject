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
        <article>
        </article>
        <!-- 콘텐츠 끝-->
      </section>
    </main>
    <%@ include file="layout/footer.jsp" %>
  </div>
</body>
</html>