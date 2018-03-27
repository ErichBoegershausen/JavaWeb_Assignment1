<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>TOBA - Sign Up</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
        
        <div id="banner">
            <h1>Titan Online Banking Application</h1>
        </div>
        
        <div id="nav">
            <a href="index.html">Home</a>&emsp;|&emsp;
            <a href="login.html">LogIn</a>&emsp;|&emsp;
            <a href="index.html">Services</a>&emsp;|&emsp;
            <a href="index.html">Contact</a>&emsp;
        </div>
        
        <div id="content">
            <h3>TOBA Sign Up</h3>
            
            <p style="color: red; font-weight: bold">${message}</p>
        
            <div id="form">
                <form method="post" action="new_customer">
            
                    <input type="hidden" name="action" value="add">     
                    <p><label>First Name:</label><input type="text" name="first" value="${customer.first}">
                    <p><label>Last Name:</label><input type="text" name="last" value="${customer.last}"> 
                    <p><label>Phone:</label><input type="text" name="phone" value="${customer.phone}">
                    <p><label>Address:</label><input type="text" name="address" value="${customer.address}">
                    <p><label>State:</label><input type="text" name="state" value="${customer.state}">
                    <p><label>City:</label><input type="text" name="city" value="${customer.city}">
                    <p><label>Zip Code:</label><input type="text" name="zip" value="${customer.zip}">
                    <p><label>E-mail:</label><input type="text" name="email" value="${customer.email}">
                    <p><input type="submit" value="Submit" class="button">
            
                </form>
            
            </div>    
        </div>
        
        
    </body>
    
</html>
