<!DOCTYPE html>
<%@page import = "java.util.List" %>

<html>
<head>
<style>
    body {
        background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
        font-family: 'Segoe UI', 'Roboto', Arial, sans-serif;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h2 {
        color: #fff;
        background: linear-gradient(90deg, #ff512f, #dd2476);
        padding: 12px 32px;
        border-radius: 14px;
        box-shadow: 0 4px 16px rgba(221,36,118,0.15);
        margin-bottom: 18px;
        letter-spacing: 1.5px;
        text-shadow: 1px 2px 8px rgba(0,0,0,0.08);
    }
    table {
        background: rgba(255,255,255,0.97);
        border-radius: 18px;
        box-shadow: 0 8px 32px rgba(253,160,133,0.18);
        margin-bottom: 32px;
        overflow: hidden;
    }
    tr {
        transition: background 0.2s;
    }
    tr:hover {
        background: #ffe0c3;
    }
    td {
        font-size: 1.1em;
        color: #333;
        padding: 12px 18px;
        text-align: center;
    }
    input[type="submit"] {
        background: linear-gradient(90deg, #ff512f, #dd2476);
        color: #fff;
        border: none;
        border-radius: 8px;
        padding: 8px 20px;
        font-size: 1em;
        font-weight: bold;
        cursor: pointer;
        box-shadow: 0 2px 8px rgba(221,36,118,0.12);
        transition: background 0.2s, transform 0.2s;
    }
    input[type="submit"]:hover {
        background: linear-gradient(90deg, #dd2476, #ff512f);
        transform: translateY(-2px) scale(1.04);
    }
    h3 {
        margin-top: 18px;
        margin-bottom: 0;
        font-size: 1.3em;
        font-weight: 600;
        color: #fff;
        background: linear-gradient(90deg, #ff512f, #dd2476);
        padding: 10px 28px;
        border-radius: 12px;
        box-shadow: 0 2px 8px rgba(221,36,118,0.10);
        display: inline-block;
        letter-spacing: 1px;
    }
    h3 a {
        color: #fff7e6;
        text-decoration: none;
        margin: 0 8px;
        padding: 4px 10px;
        border-radius: 6px;
        transition: background 0.2s, color 0.2s;
        font-weight: 500;
    }
    h3 a:hover {
        background: #ffe0c3;
        color: #dd2476;
    }
 
    
</style>
</head>
<body>
<h2>Welcome to JLC BookStore!!!</h2>
<h2>Your Cart is here</h2>

<table>

<%
Object obj = session.getAttribute("MyCart");
if(obj!=null){
	List<String> cartList = (List <String>) obj;
	if(cartList.isEmpty()){
		%>
		<font color="white" size="5">No Books in your Cart, Shop now</font>
	<% 	
	}
	int count =1;
	for(String bname:cartList){
		%>
		<tr>
		<td><%=count++ %></td>
		<td><%= bname %></td>
		<td>Rs.250</td>
		<td>10% off</td>
		<td>
		<form action = "removeFromCart.jlc">
		<input type="hidden" name ="bname" value="<%= bname %>"/>
		<input type = "submit" value="Remove from cart"/>
		</form>
		</td>
		</tr>
		<%
		
	}
}
%>
</table>
<div>
<h3>
	<a href = "showBooks.jsp">Continue Shopping | </a>
	<a href = "placeOrder.jlc">Place Order | </a>
	<a href = "index.jsp">Search More | </a>
	</h3>
	
</div>
</body>
</html>