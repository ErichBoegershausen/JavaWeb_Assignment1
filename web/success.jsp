<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
        <title>TOBA - Success!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
        
        <jsp:include page="header.html" />
        
        <div id="content">
            <h3>TOBA Success!</h3>
            
            <table>
                <tr>
                    <td>First Name: </th>
                    <td>${user.first}</th>
                </tr>
                
                <tr>
                    <td>Last Name:</td>
                    <td>${user.last}</td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>${user.phone}</td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>${user.address}</td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td>${user.city}</td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>${user.state}</td>
                </tr>
                <tr>
                    <td>Zip Code:</td>
                    <td>${user.zip}</td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>${user.email}</td>
                </tr>
            </table>
            <p>
            <table>
                <tr>
                    <th>Username:</th>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>${user.password}</td>
                </tr>
            </table>
            
            <p>
            <form action="login.jsp" method="get">
                <input type="submit" value="Login">
            </form> 
        </div>
        
    <div id = "footer">
        <jsp:include page="footer.jsp" />
    </div>
    </body>
    
</html>