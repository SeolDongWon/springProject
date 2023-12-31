<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- main 시작 -->
<!-- main 범위 내에 콘텐츠 작성 -->
<main>
	<section>
		<article>
			<div>
				<h2>${boardClassVO.name} 게시판</h2>
				<%-- ${boardClassVO.no}
				${userVO.name} --%>
				<c:if test="${userVO.id=='admin'}">
					<form action="boardCategoryInsert.do" method="post">
					<input type="hidden" name="boardClassNo" value="${boardClassVO.no}" >
						<!-- <span>카테고리이름</span>  -->
						<input type="text" name="name" placeholder="카테고리이름" required="required">
						<input type="submit" value="카테고리생성" >		
					</form>
					<br>
					<form action="boardCategoryOnOff.do" method="post">
						<input type="submit" value="카테고리OnOff" >	
						<c:forEach var="boardCategoryVO" items="${boardCategoryList}">
							<c:set var="btn" value="${boardCategoryVO.state==1?'btn-primary':''}"></c:set>
							<div>
								<span class="btn ${btn} m-1">${boardCategoryVO.name}게시판 </span>
								<input type="radio" name="no" value="${boardCategoryVO.no}">
							</div>
						</c:forEach>
					</form>
				</c:if>
				<br>
				<div>
					<input type="button" class="btn btn-outline-success" value="글쓰기2" onclick="boardInsertPage()">
					<!-- <a href="boardInsertForm.do?" class="btn">글쓰기</a> -->
					<a href="boardSelectList.do?boardCategoryName=${null}" id="전체" class="btn">전체</a>
					<c:forEach var="boardCategoryVO" items="${boardCategoryList}">
						<c:if test="${boardCategoryVO.state==1}">
							<a href="boardSelectList.do?boardCategoryName=${boardCategoryVO.name}" id="${boardCategoryVO.no}" class="btn">${boardCategoryVO.name}</a>
						</c:if>
					</c:forEach>
					<form action="boardSelectList.do" method="get">
						<select name="searchCondition">
							<option value="TITLE">제목</option>
							<option value="CONTENT">내용</option>
						</select> 
						<input name="searchKeyword" type="text" /> 
						<input type="submit" value="검색">
					</form>
				</div>
				<table class="table table-striped" style="table-layout: fixed;">
					<thead>
						<tr>
							<th class="bg-dark-subtle text-center" style="width: 50px;">분류</th>
							<th class="bg-dark-subtle text-center">작성자</th>
							<th class="bg-dark-subtle text-center" style="width: 130px;">작성일</th>
							<th class="bg-dark-subtle text-center" style="width: 50px;">조회</th>
							<th class="bg-dark-subtle text-center" style="width: 50px;">추천</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<!-- table-striped의 진한칸이 제목이 되도록 추가한 tr -->
						</tr>
						<tr style="font-size: 12px;">
							<td class=" text-center p-1" rowspan="2" style="width: 50px;">테스트</td>
							<td class="text-truncate p-1">작성자테스트작성자테스트작성자테스트작성자테스트작성자테스트작성자테스트</td>
							<td class=" text-center p-1"  style="width: 130px;">2023.12.24</td>
							<td class=" text-center p-1"  style="width: 50px;">10000</td>
							<td class=" text-center p-1"  style="width: 50px;">10000</td>
						</tr>
						<tr style="font-size: 15px;">
							<td colspan="4" class="text-truncate p-1">제목테스트제목테스트제목테스트제목테스트제목테스트제목테스트제목테스트제목테스트제목테스트</td>
						</tr>
						<c:forEach var="boardVO" items="${boardList}">
							<tr style="font-size: 12px;">
								<td class=" text-center p-1" rowspan="2" style="width: 50px;">${boardVO.boardCategoryName}</td>
								<td class="text-truncate p-1">${boardVO.writer}</td>
								<td class=" text-center p-1" style="width: 130px;">${boardVO.regDate}</td>
								<td class=" text-center p-1"  style="width: 50px;">${boardVO.cnt}</td>
								<td class=" text-center p-1"  style="width: 50px;">10000</td>
							</tr>
							<tr style="font-size: 15px;">
								<td colspan="4" class="text-truncate p-1">${boardVO.title}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</article>
	</section>
</main>
<script type="text/javascript">

console.log(${boardClassVO.no});
function boardInsertPage(){
	console.log("boardInsertPage");
	if(${userVO==null}){
		alert("권한없음");
	}else{
 		location.href="boardInsertForm.do?boardClassNo="+${boardClassVO.no};
		/* location.href="boardInsertForm.do"; */	
	}
}


/* let category=${category};
console.log(${category}); */
/* window.onload= function(){ */
	
/* 	if(${boardSearchVO.category}!=""){
		document.getElementById('${boardSearchVO.category}').classList.add('btn');
	document.getElementById('listAll').classList.remove('btn');
	} */


</script>
<!-- main 끝-->
<%@ include file="pageInclude/PageBottom.jsp"%>