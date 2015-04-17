package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import beans.User;
import com.google.gson.Gson;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import travelexperts.Customer;
import travelexperts.CustomerModelDB;

/**
 *
 * @author alonch
 */
public class AccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Content-Type", "application/json");
        try {
            Customer customerData = new Gson().fromJson(req.getReader(), Customer.class);
            HttpSession session = req.getSession();
            Customer customer = (Customer) session.getAttribute("user");
            customer.setHomePhone(customerData.getHomePhone());
            customer.setFirstName(customerData.getFirstName());
            customer.setEmail(customerData.getEmail());
            customer.setLastName(customerData.getLastName());
            new CustomerModelDB().save(customer);
            session.setAttribute("user", customer);
            resp.getWriter().print(true);
        } catch (Exception ex) {
            resp.getWriter().print(false);
        }

    }

}
