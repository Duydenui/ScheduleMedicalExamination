package Controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import model.user;

public abstract class BaseAuthenticationAdminController extends HttpServlet {

    private boolean isAuthenticated(HttpServletRequest request) {
        user account = null;
        if (request.getSession().getAttribute("account") != null) {
            account = (user) request.getSession().getAttribute("account");
            if (account.getUser_role() != 1) {
                return false;
            }
        } 
        return account != null;

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (isAuthenticated(request)) {
            processPost(request, response);
        } else {
            response.sendRedirect("/Child-care-system/login");
        }
    }

    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (isAuthenticated(request)) {
            //process business
            processGet(request, response);
        } else {
            response.sendRedirect("/Child-care-system/login");
        }
    }

}
