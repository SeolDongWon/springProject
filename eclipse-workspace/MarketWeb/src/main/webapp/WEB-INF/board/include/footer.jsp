<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    let maintab2Div = document.getElementById('maintab2');
    document.getElementById('maintab2Width').innerHTML =
        '<h1>maintab2Width : ' + maintab2Div.clientWidth + '</h1>';
    document.getElementById('maintab2Hight').innerHTML =
        '<h1>maintab2Hight : ' + maintab2Div.clientHeight + '</h1>';

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