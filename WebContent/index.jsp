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

hi, click on the link to choose your background color:
<form action="index.jsp" method="GET">
	<input type="radio" name="color" value="red">Red
	<input type="radio" name="color" value="blue">Blue

<%
	String c = request.getParameter("color");
	session.setAttribute("color", c);
	out.println(request.getParameter("color"));
	out.println(session.getAttribute("color"));

%>
	<input type="submit" onclick="localtion.reload(true)">
</form>

<ul>
<li><a href="1.jsp">Page 1</a></li>
<li><a href="2.jsp">Page 2</a></li>
<li><a href="3.jsp">Page 3</a></li>

</ul>

</body>
</html>