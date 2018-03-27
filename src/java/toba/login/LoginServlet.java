package toba.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String userName = request.getParameter("user");
        String passWord = request.getParameter("pass");
        String url = "/login_failure.html";
        
        if ("jsmith@toba.com".equals(userName) && "letmein".equals(passWord)) {
            url = "/account_activity.html";
        } else {
            url = "/login_failure.html";
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
