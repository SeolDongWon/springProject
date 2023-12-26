<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<hr>
<main class="p-0 m-0">
	<section>
		<article>
			<div class="container-md">
				<c:forEach var="boardClassVO" items="${boardClassList}">
					<c:if test="${boardClassVO.state==1}">
						<div>
							<a href="boardSelectList.do?boardClassNo=${boardClassVO.no}" class="btn btn-outline-dark m-1">${boardClassVO.name} 게시판</a>		
						</div>
					</c:if>
				</c:forEach>
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
