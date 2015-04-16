package servlets;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import beans.User;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import travelexperts.Customer;
import travelexperts.CustomerModelDB;

/**
 *
 * @author alonch
 */
public class LoginServlet extends HttpServlet {

    Logger log = Logger.getLogger("Login");

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Content-Type", "application/json");
        User user = new Gson().fromJson(request.getReader(), User.class);
        try {
            Customer customer = new CustomerModelDB().getByUserIdAndPassword(user.getEmail(), user.getPassword());
            request.getSession().setAttribute("user", customer);
            response.getWriter().print(true);
        } catch (Exception ex) {
            response.getWriter().print(false);
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }
}
