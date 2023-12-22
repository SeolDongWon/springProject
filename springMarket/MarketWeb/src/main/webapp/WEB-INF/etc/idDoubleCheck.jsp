<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:choose> 
	<c:when test="${idCheck==0}">
		<script>
			opener.document.getElementById('idError').innerHTML = "사용 가능"
			opener.document.getElementById('idError').style.color = "blue"
			opener.document.getElementById('id').classList.remove('focusRed');
		</script>
	</c:when> 
	<c:otherwise>
		<script>
			opener.document.getElementById('idError').innerHTML = "id중복! 사용 불가!"
		</script>
	</c:otherwise>
</c:choose>
<script>
	window.close();
</script>
