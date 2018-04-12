<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>TOBA - Account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
    <jsp:include page="header.html" />
    <div id="content">
    <c:if test="${sessionScope.user != null}">
        <h4>Welcome to your account activity page ${user.first} ${user.last}!</h4>
    </c:if>
    <c:if test="${sessionScope.user == null}">
    <h4>Not Logged In</h4>
    </c:if> 
    </div>


    <div id = "footer">
        <jsp:include page="footer.jsp" />
    </div>
    </body>
</html>