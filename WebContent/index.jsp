<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<FORM NAME="form1" action="login" method="post">
		<input type="text" name="usr">
		<input type="password" name="pwd">
		<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Login">
	</FORM>
	
	<%
		String str = (String)session.getAttribute("login");
		if (str != null && str.equals("false")) {
			out.println("Your username/password is incorrect");
		}
	%>

</body>
</html>