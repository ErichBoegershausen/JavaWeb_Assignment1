<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>TOBA - 404</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
        <jsp:include page="header.html" />
        
        <div id="content">
            <h1>404 Error</h1> 
            <p>The server was not able to find the file you requested.</p> <p>To continue, click the Back button.</p>
        </div>

       <div id = "footer">
            <jsp:include page="footer.jsp" />
        </div>
        
    </body>
    
</html>
