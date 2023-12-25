<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<!-- main 시작 -->
<!-- main 범위 내에 콘텐츠 작성 -->
<main>
	<section>
		<article>
			<br>
			<h1 align="center">${boardClassVO.name} 게시판 글쓰기</h1>
			 <br>
			
			<hr>
			<div class="container-md p-3 m-auto" style="max-width: 700px">
				<form action="boardInsert.do" method="post" name="insertBoardForm"
					enctype="multipart/form-data">
					<input type="hidden" name="userNo" value="${userVO.no}">
					<input type="hidden" name="boardClassNo" value="${boardClassVO.no}">
					<div class="d-flex">
						<div class="mb-3 me-2 w-50">
							<p class="form-label">작성자</p> 
							<input type="text" name="writer" class="form-control" value="${userVO.name}" readonly="readonly" required="required">
						</div>
						<div class="mb-3 w-50">
							<p class="form-label">글분류</p> 
							<select name="boardCategoryName" class="form-select" required="required">
								<c:forEach var="boardCategoryVO" items="${boardCategoryList}">
								<c:if test="${boardCategoryVO.state==1}">
									<option value="${boardCategoryVO.name}" selected>${boardCategoryVO.name}</option>
								</c:if>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="mb-3 me-2">
							<p class="form-label">제목</p> 
							<input type="text" name="title" class="form-control" required="required">
						</div>
					<div class="mb-3">
						<p class="form-label">내용</p>
						<textarea class="form-control" name="content"	rows="10" required="required"></textarea>
					</div>
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="inputGroupFile01">
					</div>
					<button type="submit" class="btn btn-primary">boardInsert.do</button>
					<a href="boardSelectListPage.do"><input type="button"
						value="boardSelectListPage.do" class="btn btn-primary"></a>
				</form>
			</div>
		</article>
	</section>
</main>
<!-- main 끝-->
<%@ include file="pageInclude/PageBottom.jsp"%>
<style>
/*css 작성  */
</style>

<script type="text/javascript">
	/*js 작성  */
</script>
