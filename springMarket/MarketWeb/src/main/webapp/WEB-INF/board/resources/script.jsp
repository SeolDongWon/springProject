<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>



	function screanCheck() {
		document.getElementById('w').innerHTML = "<h1>화면 너비 : "				+ window.outerWidth + "</h1>";
		document.getElementById('h').innerHTML = "<h1>화면 높이 : "				+ window.outerHeight + "</h1>";

		let containDiv = document.getElementById('bodyContainer');
		document.getElementById('containerWidth').innerHTML = '<h1>containerWidth : '
				+ containDiv.clientWidth + '</h1>';
		document.getElementById('containerHight').innerHTML = '<h1>containerHight : '
				+ containDiv.clientHeight + '</h1>';

		if (containDiv.clientWidth < 1140) {
			document.getElementById('aside').style.display = "none";
		} else {
			document.getElementById('aside').style.display = "";
		}

		if (containDiv.clientWidth < 740) {
			document.getElementById('maintab1').style.width = "100%";
			document.getElementById('maintab2').style.width = "100%";
		} else {
			document.getElementById('maintab1').style.width = "";
			document.getElementById('maintab2').style.width = "";
		}
	}
	
	
	
	
</script>