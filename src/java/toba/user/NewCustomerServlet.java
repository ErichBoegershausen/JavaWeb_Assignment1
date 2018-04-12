package toba.user;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import toba.data.UserDB;

public class NewCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String action = request.getParameter("action");
        String url = "/new_customer.jsp";
        String message;
        
        if (action == null) {
            action = "join";
        }
        
        if (action.equals("join")) {
            url = "/new_customer.jsp";
        } else if (action.equals("add")) {
            String first = request.getParameter("first");
            String last = request.getParameter("last");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String zip = request.getParameter("zip");
            String email = request.getParameter("email");
           
 
            if (first == null || last == null || phone == null || address == null || state == null || city == null || zip == null || email == null || first.isEmpty() || last.isEmpty() || phone.isEmpty() || address.isEmpty() || state.isEmpty() || city.isEmpty() || zip.isEmpty() || email.isEmpty()) {
                message = "***Please fill in all text boxes to sign up.***";
                url = "/new_customer.jsp";
            } else {
                String username = last + zip;
                String password = "welcome1";
                
                User user = new User(first, last, phone, address, state, city, zip, email, username, password);
                
                message = "";
                url = "/success.jsp";
                
                // Add the new create user object to the session scope
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
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
