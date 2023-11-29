
package Controller;

import DAO.RoleDAO;
import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import model.user;
import model.userRole;

public class CustomerListServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CustomerListServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustomerListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDAO u = new UserDAO();
        int page = 1;
        HttpSession session = request.getSession();
        session.removeAttribute("role");
        session.removeAttribute("sort");
        session.removeAttribute("status");
        session.removeAttribute("gender");
        List<userRole> list_role = new RoleDAO().getAllRole();
        if(request.getParameter("page") != null){
            page = Integer.parseInt(request.getParameter("page"));
        }
        int maxPage = u.countTotalCustomer()/8;
        if(maxPage % u.countTotalCustomer() != 0){
            maxPage += 1;
        }
        List<user> list_customer = u.listCustomerWithPagging(page);
        request.setAttribute("page", page);
        request.setAttribute("maxPage", maxPage);
        request.setAttribute("list_role", list_role);
        request.setAttribute("list_user", list_customer);
        request.setAttribute("path", "home");
        request.getRequestDispatcher("customersList.jsp").forward(request, response);
        //}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
