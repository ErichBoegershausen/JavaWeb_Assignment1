package toba.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import toba.user.User;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String userName = request.getParameter("user");
        String passWord = request.getParameter("pass");
        String url = "/login_failure.html";
        
        HttpSession session = request.getSession();
        
        if (session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            if (user.getUsername().equals(userName) && user.getPassword().equals(passWord)) {
                url = "/account_activity.jsp";
            } else {
                url = "/login_failure.html";
            }
        } else {
            url = "/new_customer.jsp";
            String message = "No user in session. Please create one.";
            request.setAttribute("message", message);
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
