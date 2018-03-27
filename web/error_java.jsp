<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>TOBA - Error</title>
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
            <h1>Java Error</h1>
            <p>Sorry, Java has thrown an exception.
            <p>To continue, click the Back button.
            <p>Details
            <p>Type: ${pageContext.exception["class"]}
            <p>Message: ${pageContext.exception.message}
        </div>
        
        
    </body>
    
</html>
