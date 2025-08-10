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
 
    
</style>
</head>
<body>
<h2>Welcome to JLC BookStore!!!</h2>
<h2>Books available for ${CAT}</h2>

<div>
		<form action = "showMyCart.jlc">
		<input type = "submit" value="Show My Cart"/>
		</form>
</div>
<table>

<%
Object obj = session.getAttribute("BooksList");
if(obj!=null){
	List<String> bookList = (List <String>) obj;
	int count =1;
	for(String bname:bookList){
		%>
		<tr>
		<td><%=count++ %></td>
		<td><%= bname %></td>
		<td>Rs.250</td>
		<td>10% off</td>
		<td>
		<form action = "addToCart.jlc">
		<input type="hidden" name ="bname" value="<%= bname %>"/>
		<td><input type = "submit" value="Add To Cart"/></td>
		</form>
		</td>
		</tr>
		<%
		
	}
}
%>
</table>
</body>
</html>