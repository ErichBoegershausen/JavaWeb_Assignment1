package toba.user;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String action = request.getParameter("action");
        String url = "/password_reset.jsp";
        String message;
        
        if (action == null) {
            url = "/password_reset.jsp";
        } else if (action.equals("change")) {
            String newpassword = request.getParameter("newpassword");
            String confirmpassword = request.getParameter("confirmpassword");
            String username = request.getParameter("username");
           
 
            if (!(newpassword.equals(confirmpassword))) {
                message = "***Please enter the same password into both fields.***";
                url = "/password_reset.jsp";
            } else {
                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("user");
                user.setPassword(newpassword);
                session.setAttribute("user", user);
                message = "";
                url = "/account_activity.jsp";
            }
           
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