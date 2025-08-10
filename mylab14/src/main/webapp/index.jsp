<!DOCTYPE html>
<html>
<head>
<style>
    body {
        background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
        font-family: 'Segoe UI', 'Roboto', Arial, sans-serif;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    h2 {
        color: #fff;
        background: linear-gradient(90deg, #ff6a00, #ee0979);
        padding: 16px 32px;
        border-radius: 16px;
        box-shadow: 0 4px 16px rgba(238,9,121,0.2);
        margin-bottom: 24px;
        letter-spacing: 2px;
        text-shadow: 1px 2px 8px rgba(0,0,0,0.1);
    }
    form {
        background: rgba(255,255,255,0.95);
        padding: 32px 40px;
        border-radius: 20px;
        box-shadow: 0 8px 32px rgba(252,182,159,0.2);
        margin-bottom: 32px;
        min-width: 320px;
    }
    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 12px;
    }
    td {
        font-size: 1.1em;
        color: #333;
        padding: 8px 0;
    }
    select {
        width: 100%;
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #ff6a00;
        background: #fff7f0;
        font-size: 1em;
        transition: border 0.2s;
    }
    select:focus {
        border: 2px solid #ee0979;
        outline: none;
    }
    input[type="Submit"] {
    	
        background: linear-gradient(90deg, #ff6a00, #ee0979);
        color: #fff;
        border: none;
        border-radius: 8px;
        padding: 12px 28px;
        font-size: 1.1em;
        font-weight: bold;
        cursor: pointer;
        box-shadow: 0 2px 8px rgba(255,106,0,0.15);
        transition: background 0.2s, transform 0.2s;
        
    }
    input[type="Submit"]:hover {
        background: linear-gradient(90deg, #ee0979, #ff6a00);
        transform: translateY(-2px) scale(1.04);
    }
</style>
</head>
<body>
<h2>Welcome to JLC BookStore!!!!!!</h2>
<form action ="searchBooks.jlc">
<font color = red size ="5"> ${MSG} </font>
<table>
<tr>
<td>Select Category</td>
</tr>
<tr>
<td>
<select name = "category"> 
<option value="">-----Select Category-----</option>
<option value="Java">Java Programming</option>
<option value="Python">Python Programming</option>
<option value="Web">Web Development</option>
</select>
</td>
</tr>
<tr>
<td> <input type = "Submit" value ="Search Books"></td>
</tr>

</table>
</form>


</body>
</html>