<!DOCTYPE html>
<html>
    <head>
        <title>TOBA - Log In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
    <jsp:include page="header.html" />

    <div id="content">
        <h3>Login Page</h3>
            
        <div id="form">
            <form method="post" action="login">
                
                <p><label>User Name:</label><input type="text" name="user">
                <p><label>Password:</label><input type="text" name="pass">
                <p><input type="submit" value="Log in" class="button">
            
            </form>
        
            <form method="post" action="new_customer">
                <input type="hidden" name="action" value="join">
                <p><input type="submit" value="Sign Up" class="button">
            </form>
        </div>
            
        <p><a href="password_reset.jsp">Reset Password</a></p>
    
    </div>

<div id = "footer">
    <jsp:include page="footer.jsp" />
</div>