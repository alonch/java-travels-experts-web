package filter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alonch
 */
@WebFilter(filterName = "LoginRequired", urlPatterns = {"/account.jsp", "/summary.jsp"}, dispatcherTypes = {DispatcherType.REQUEST})
public class LoginRequired implements Filter {

    public LoginRequired() {
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        if (req.getSession().getAttribute("user") == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        request.getRequestDispatcher(((HttpServletRequest) request).getServletPath()).forward(request, response);

    }

    @Override
    public void init(FilterConfig fc) throws ServletException {

    }

    @Override
    public void destroy() {

    }
}
