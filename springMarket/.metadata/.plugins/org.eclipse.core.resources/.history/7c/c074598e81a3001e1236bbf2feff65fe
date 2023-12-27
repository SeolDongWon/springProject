<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<main class="p-0 m-0">
	<section>
		<article>
			<div class="container-md">
				<form action="boardClassInsert.do" method="post">
					<input type="text" name="name" placeholder="게시판이름">
					<input type="submit" value="게시판생성" >		
				</form>
				<br>
				<form action="boardClassOnOff.do" method="post">
				<input type="submit" value="게시판OnOff" >	
					<c:forEach var="boardClassVO" items="${boardClassList}">
						<c:set var="btn" value="${boardClassVO.state==1?'btn-primary':''}"></c:set>
						<div>
							<a href="boardSelectList.do?boardClassNo=${boardClassVO.no}" class="btn ${btn} m-1">${boardClassVO.name}게시판 </a>
							<input type="radio" name="no" value="${boardClassVO.no}">
						</div>
					</c:forEach>
				</form>
			</div>
		</article>
	</section>
</main>
<%@ include file="pageInclude/PageBottom.jsp"%>
<style>
/*css 작성  */


</style>

<script type="text/javascript">
/*js 작성  */



</script>
