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
		<p>Select which item to calculate</p>
		<select name="item">
			<option value="rate">rate</option>
			<option value="time">time</option>
			<option value="distance">distance</option>
		</select>
		<br>
		<p>Enter values. Leave the one to calculate blank</p>
		 Rate<input type="text" name="rate"> 
		 Time<input type="text" name="time"> 
		Distance<input type="text" name="distance">
		<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Calculate">
	</FORM>

	<%
		out.println(session.getAttribute("result"));
	%>

</body>
</html>