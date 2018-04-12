<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>TOBA - Reset Password </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
    <jsp:include page="header.html" />
    <div id="content">  
        <h3>Reset Password</h3>
        
        <p style="color: red; font-weight: bold">${message}</p>
                    
        <div id="form">
                <form method="post" action="reset">
            
                    <input type="hidden" name="action" value="change">     
                    <p><label>Username:</label><input type="text" name="first" value="${user.username}">
                    <p><label>New Password:</label><input type="text" name="newpassword"> 
                    <p><label>Confirm Password:</label><input type="text" name="confirmpassword">
                    <p><input type="submit" value="Submit" class="button">
            
                </form>
            
        </div>        
    </div>
                    
    <div id = "footer">
        <jsp:include page="footer.jsp" />
    </div>

    </body>
</html>
