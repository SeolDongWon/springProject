<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!-- 회원가입 확인 시작 -->
<%-- <c:if test="${userInsertFlag==1 }">
	<script>
		alert("가입성공");
	</script>
</c:if>
<c:if test="${userInsertFlag==0 }">
	<script>
		alert("가 입 실 패");
	</script>
</c:if>
<!-- 회원가입 확인 끝 -->

<!-- 로그인 확인 시작 -->
<c:if test="${userLoginFlag==1 }">
	<script>
		alert("로그인성공");
	</script>
</c:if>
<c:if test="${userLoginFlag==0 }">
	<script>
		alert("로 그 인 실 패");
	</script>
</c:if>
<!-- 로그인 확인 끝 -->

<!-- 로그아웃 확인 시작 -->
<c:if test="${userLogoutFlag==1 }">
	<script>
		alert("로그아웃 성공");
	</script>
</c:if>
<!-- 로그아웃 확인 끝 -->

<!-- 회원탈퇴 확인 시작 -->
<c:if test="${deleteUserFlag==1 }">
	<script>
		alert("탈퇴성공");
	</script>
</c:if>
<c:if test="${deleteUserFlag==-1 }">
	<script>
		alert("탈 퇴 실 패");
	</script>
</c:if> --%>
<!-- 회원탈퇴 확인 끝 -->


<%-- 
<c:set var="massage" value="${(updateUserFlag==1)?('수정성공'):('수정실패')}"/>
	<script>
		alert("수정성공");
	</script>
<c:if test="${updateUserFlag==-1 }">
	<script>
		alert("수 정 실 패");
	</script>
</c:if>
 --%>

<c:if test="${updateUserFlag==1 }">
	<script>
		alert("수정성공");
	</script>
</c:if>
<c:if test="${updateUserFlag==-1 }">
	<script>
		alert("수 정 실 패");
	</script>
</c:if> 




<script type="text/javascript">
	location.href = "mainPage.do";
</script>