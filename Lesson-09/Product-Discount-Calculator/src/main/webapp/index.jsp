<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    #content{
        width: 450px;
        margin: 0 auto;
        padding: 20px 20px 20px;
        background: white;
        border: solid navy 1px;
    }
    #center{
        margin-top: 10px;
        display: flex;

        justify-content: center;
    }
    label{
        width: 10em;
        padding-right: 1em;
        float: left;
    }
    h1{
        text-align: center;
    }
</style>
<body>
<h1>Product Discount Calculator</h1>
<br/>
<form action="/display-discount" method="post">
    <div id="content">
        <label for="description">Product Description</label>
        <input type="text" name="description" id="description"/>
        <br>
        <label for="price">List Price</label>
        <input type="text" name="price" id="price"/>
        <br>
        <label for="discount">Discount Percent</label>
        <input type="text" name="discount" id="discount"/>
    </div>
    <div id="center">
        <input type="submit" value="Discount Product"/>
    </div>

</form>
</body>
</html>