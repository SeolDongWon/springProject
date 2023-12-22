<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PageForm</title>
<%@ include file="resources/bootstrap.jsp"%>
</head>

<body onload="screanCheck();" onresize="screanCheck();">
	<%@ include file="resources/screenSize.jsp"%>
	<div class="container-md p-0" id="bodyContainer">
		<%@ include file="resources/header.jsp"%>
		<main>
			<%@ include file="resources/aside.jsp"%>
			<section>
				<!-- 콘텐츠 시작 -->
				<article class="container-md p-0 row ms-0">
					<div id="ad"
						style="width: 100%; height: 500px; background-color: antiquewhite;">
						이미지 넣는 공간</div>
					<div id="maintab1" class="col-sm-6 p-0 ">
						<h2 class="text-center">
							<a href="#notice" class="text-dark">공지사항</a>
						</h2>
						<ul class="p-0">
							<li><a href="#" class="textSkip btn btn-light">4Cum
									libero um libero um libero accusamus placeat aliquam
									voluptates,</a></li>
							<li><a href="#" class="textSkip btn btn-light">2Illum
									laborum earum illo natus cumque d</a></li>
							<li><a href="#" class="textSkip btn btn-light">3Dolorum
									error soluta saepe. Nulla </a></li>
							<li><a href="#" class="textSkip btn btn-light">5Atque
									eveniet ratione nemo iste, dolo</a></li>
							<li><a href="#" class="textSkip btn btn-light">Rerum
									eveniet voluptas distinctio dolores harum,</a></li>
						</ul>
					</div>
					<div id="maintab2" class="col-sm-6 pt-1">
						<h2 class="text-center">
							<a href="#notice" class="text-dark">게시판</a>
						</h2>
						<ul class="p-0">
							<li><a href="#" class="textSkip btn btn-light">4Cum
									libero um libero um libero accusamus placeat aliquam
									voluptates,</a></li>
							<li><a href="#" class="textSkip btn btn-light">2Illum
									laborum earum illo natus cumque d</a></li>
							<li><a href="#" class="textSkip btn btn-light">3Dolorum
									error soluta saepe. Nulla </a></li>
							<li><a href="#" class="textSkip btn btn-light">5Atque
									eveniet ratione nemo iste, dolo</a></li>
							<li><a href="#" class="textSkip btn btn-light">Rerum
									eveniet voluptas distinctio dolores harum,</a></li>
						</ul>
					</div>
				</article>
				<!-- 콘텐츠 끝-->
			</section>
		</main>
		<%@ include file="resources/footer.jsp"%>
	</div>
</body>
<%@ include file="resources/style.jsp"%>
<%@ include file="resources/script.jsp"%>
</html>