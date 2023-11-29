
package Controller.admin;

import DAO.RoleDAO;
import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.user;
import model.userRole;

public class UserDetailServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserDetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserDetailServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
//        user user1 = (user) request.getSession().getAttribute("admin");
//        if (user1 == null){
//            PrintWriter out = response.getWriter();
//            out.println("Access denied");
//        }else{
            if(request.getParameter("user_id")==null || request.getParameter("user_id").toString().equals("")){
            response.sendRedirect((String)request.getSession().getAttribute("previousPath"));
            return;
            }
        int id = Integer.parseInt(request.getParameter("user_id"));
        String func = request.getParameter("function");
        user user = new UserDAO().getUserById(id);
        List<userRole> list_role = new RoleDAO().getAllRole();
        String role = "";
        for (int i = 0; i < list_role.size(); i++) {
            if (user.getUser_role() == list_role.get(i).getRole_id()) {
                role = list_role.get(i).getRole_name();
            }
        }
        if (user != null) {
            request.setAttribute("user", user);
            request.setAttribute("role", role);
            request.setAttribute("list_role", list_role);
        }
        request.setAttribute("user_id", id);
        if(func.equals("edit")){
            request.getRequestDispatcher("userDetail.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("ViewUser.jsp").forward(request, response);
//        }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("user_id")==null || request.getParameter("user_id").toString().equals("")){
            response.sendRedirect((String)request.getSession().getAttribute("previousPath"));
            return;
        }
        int id = Integer.parseInt(request.getParameter("user_id"));
        user user = new UserDAO().getUserById(id);
        List<userRole> list_role = new RoleDAO().getAllRole();
        if (request.getParameter("role")!=null) {
            int role_raw = Integer.parseInt(request.getParameter("role").toString());
            user.setUser_role(role_raw);
        }
        if (request.getParameter("status") != null) {
            int status_raw = Integer.parseInt(request.getParameter("status").toString());
            boolean status = true;
            if (status_raw == 0) {
                status = false;
            }
            user.setUser_status(status);
        }
        String role = "";
        for (int i = 0; i < list_role.size(); i++) {
            if (user.getUser_role() == list_role.get(i).getRole_id()) {
                role = list_role.get(i).getRole_name();
            }
        }
        new UserDAO().EditUser(user);
        request.setAttribute("user_id", id);
        request.setAttribute("user", user);
        request.setAttribute("list_role", list_role);
        request.setAttribute("role", role);
        request.getRequestDispatcher("userDetail.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
