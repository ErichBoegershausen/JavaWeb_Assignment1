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
        <jsp:include page="header.html" />
        
        <div id="content">
            <h3>TOBA Sign Up</h3>
            
            <p style="color: red; font-weight: bold">${message}</p>
        
            <div id="form">
                <form method="post" action="new_customer">
            
                    <input type="hidden" name="action" value="add">     
                    <p><label>First Name:</label><input type="text" name="first" value="${user.first}">
                    <p><label>Last Name:</label><input type="text" name="last" value="${user.last}"> 
                    <p><label>Phone:</label><input type="text" name="phone" value="${user.phone}">
                    <p><label>Address:</label><input type="text" name="address" value="${user.address}">
                    <p><label>State:</label><input type="text" name="state" value="${user.state}">
                    <p><label>City:</label><input type="text" name="city" value="${user.city}">
                    <p><label>Zip Code:</label><input type="text" name="zip" value="${user.zip}">
                    <p><label>E-mail:</label><input type="text" name="email" value="${user.email}">
                    <p><input type="submit" value="Submit" class="button">
            
                </form>
            
            </div>    
        </div>
        
        <div id = "footer">
            <jsp:include page="footer.jsp" />
        </div>
    </body>
    
</html>
