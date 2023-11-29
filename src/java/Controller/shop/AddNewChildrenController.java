package Controller.shop;

import DAO.ChildrenDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import model.children;
import model.user;

public class AddNewChildrenController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNewChildrenController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewChildrenController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        HttpSession session = request.getSession();
        user user = (user)session.getAttribute("account");
        if(session.getAttribute("account") == null){
            user = (user)session.getAttribute("admin");
        }
        String dob = request.getParameter("age");
        System.err.println("Age:---------------------------------------------------------"+dob);
        int age = Integer.parseInt(dob.split("-")[0]);
        int gender_raw = Integer.parseInt(request.getParameter("gender"));
        boolean gender = true;
        if(gender_raw == 0){
            gender = false;
        }
        children children = new children(1, user.getUser_id(), name, gender, age);
        new ChildrenDAO().addNewChildren(children);
        
        response.sendRedirect("/Child-care-system/user_profile");
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
