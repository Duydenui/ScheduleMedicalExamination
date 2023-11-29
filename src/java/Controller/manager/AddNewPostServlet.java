package Controller.manager;

import DAO.PostDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "AddNewPostServlet", urlPatterns = {"/addpost"})
public class AddNewPostServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use the sample code below. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNewPostServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewPostServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Process the form submission
    int user_id = 0;
    String user_idParam = request.getParameter("user_id");
    if (user_idParam != null && !user_idParam.isEmpty()) {
        user_id = Integer.parseInt(user_idParam);
    }

    String stitle = request.getParameter("title");
    String sbi = request.getParameter("bi");
    String scategoryId = request.getParameter("category");
    String sdetail = request.getParameter("detail");
    String sblogImage = request.getParameter("blogImage");
    
    int sstatus_raw = 0;
    String sstatusParam = request.getParameter("status");
    if (sstatusParam != null && !sstatusParam.isEmpty()) {
        sstatus_raw = Integer.parseInt(sstatusParam);
    }
    
    boolean sstatus = sstatus_raw == 1;

    PostDAO postDAO = new PostDAO();
    postDAO.createNewBlog(user_id, stitle, sbi, scategoryId, sdetail, sblogImage, sstatus);

    response.sendRedirect("PostListController");
}

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
