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
	<div class="container-md" id="bodyContainer">
		<%@ include file="resources/header.jsp"%>
		<main>
			<%@ include file="resources/aside.jsp"%>
			<section>
				<!-- 콘텐츠 시작 -->
				<article></article>
				<!-- 콘텐츠 끝-->
			</section>
		</main>
		<%@ include file="resources/footer.jsp"%>
	</div>
</body>
<%@ include file="resources/style.jsp"%>
<%@ include file="resources/script.jsp"%>
</html>