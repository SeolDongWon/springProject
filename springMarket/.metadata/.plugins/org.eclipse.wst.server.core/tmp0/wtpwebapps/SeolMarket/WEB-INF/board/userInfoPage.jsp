<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<main class="p-0 m-0">
	<section>
		<article>
			<div class="container-md">
				<div>
					<span>아이디 : ${userVO.id} &nbsp;</span>
					<span>비밀번호 : ${userVO.password} &nbsp;</span>
					<span>이름 : ${userVO.name} &nbsp;</span>
					<span>연락처 : ${userVO.tel} &nbsp;</span>
					<span>주소 : ${userVO.address} &nbsp;</span>
					<c:if test="${userVO.id=='admin'}">
						<a href="admin.do">adminPage</a>
					</c:if>
				</div>
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
