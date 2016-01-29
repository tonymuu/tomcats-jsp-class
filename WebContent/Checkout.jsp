<%@page import="java.text.DecimalFormat"%>
<%@page language="java" contentType="text/html"%>
<%@page session="true" import="java.util.Vector, ebookshop.Book"%>
<html>
<head>
<title>E-Bookshop Checkout</title>
<style type="text/css">
body {
	background-color: gray;
	font-size
	=10pt;
}

H1 {
	font-size: 20pt;
}

table {
	background-color: white;
}
</style>
</head>
<body>
	<H1>Your online Bookshop - Checkout</H1>
	<hr />
	<p />
	<table border="1" cellpadding="2">
		<tr>
			<td>TITLE</td>
			<td align="right">PRICE</td>
			<td align="right">QUANTITY</td>
		</tr>
		<%
			Vector<Book> shoplist = (Vector<Book>) session.getAttribute("ebookshop.cart");
			for (Book anOrder : shoplist) {
		%>
		<tr>
			<td><%=anOrder.getTitle()%></td>
			<td align="right">$<%=anOrder.getPrice()%></td>
			<td align="right"><%=anOrder.getQuantity()%></td>
		</tr>
		<%
			}
			session.invalidate();
		%>
		<tr>
			<td>SUB TOTAL</td>
			<td align="right">$<%
				DecimalFormat format = new DecimalFormat("#0.00");
				out.println(format.format(Double.valueOf((String)request.getAttribute("dollars"))));	
				%></td>
			<td align="right"><%=(String) request.getAttribute("books")%></td>
		</tr>

		<tr>
			<td>Sales Tax</td>
			<td align="right">$<% 
				String p = (String) request.getAttribute("dollars");
				double price = Double.valueOf(p); 
				double tax = price*0.08279;
				out.println(format.format(tax)); 
			 %></td>
			<td align="right"><%=" " %></td>
		</tr>
		<tr>
			<td>GRAND TOTAL</td>
			<td align="right">
			$<%
				out.println(format.format(price+tax));
			%>
			</td>
			<td align="right"><%=" " %></td>
		</tr>

	</table>
	<p />
	<a href="/ebookshop/eshop">Buy more!</a>
</body>
</html>
