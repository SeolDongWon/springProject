<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:if test="${deleteUserFlag==1 }">
	<script>
		alert("탈퇴성공");
	</script>
</c:if>
<c:if test="${deleteUserFlag==-1 }">
	<script>
		alert("탈 퇴 실 패");
	</script>
</c:if>

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


<c:if test="${insertUserFlag==1 }">
	<script>
		alert("가입성공");
	</script>
</c:if>
<c:if test="${insertUserFlag==-1 }">
	<script>
		alert("가 입 실 패");
	</script>
</c:if>


<script type="text/javascript">
	location.href = "login.do";
</script>