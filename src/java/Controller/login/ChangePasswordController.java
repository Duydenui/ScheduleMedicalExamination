package Controller.login;

import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import model.user;

public class ChangePasswordController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            HttpSession sessionchangepass = request.getSession();

            String username = request.getParameter("username");
            String oldpassword = request.getParameter("oldpassword");
            String newpassword = request.getParameter("newpassword");
            String repeatnewpassword = request.getParameter("repeatpassword");

            UserDAO accountDao = new UserDAO();
            user account = accountDao.checkAccountExit(username);

            if (account == null) {
                request.setAttribute("c", "The account doesn't exist yet!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else if (!oldpassword.equals(account.getUser_password())) {
                request.setAttribute("c", "Password not match!!!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else if (newpassword.equals(oldpassword)) {
                request.setAttribute("c", "The new password must not be the same as the old password!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else if (!newpassword.equals(repeatnewpassword)) {
                request.setAttribute("c", "The repeat new password must be the same as the new password!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else {
                accountDao.changePasword(username, newpassword);
                request.getRequestDispatcher("success.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
