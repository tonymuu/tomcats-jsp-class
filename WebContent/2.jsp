<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function changebg() {
		<% 
			String color = "white";
			if (session.getAttribute("color") != null) {
				color = (String) session.getAttribute("color");
			}
		%>
		var color = "<%=color %>";
		document.body.style.backgroundColor = color;
	}
	
</script>

</head>
<body>
Second page
<br>
<a href="index.jsp">Back</a>

</body>
</html>