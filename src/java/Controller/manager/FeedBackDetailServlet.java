package Controller.manager;

import DAO.FeedbackDAO;
import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import model.feedback;

public class FeedBackDetailServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FeedbackDetailsServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackDetailsServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int feedbackId = Integer.parseInt(request.getParameter("feedback_id"));
     //  int feedbackId = 1;
       FeedbackDAO feedbackDAO = new FeedbackDAO();
       feedback feedback = feedbackDAO.getFeedbackByID(feedbackId);
       String name = "";
       if(feedback.getUser_id() != 0){
           name = new UserDAO().getUserById(feedback.getUser_id()).getUser_name();
       }
       name = feedback.getName();
       request.setAttribute("feedback", feedback);
       request.setAttribute("name", name);
       request.getRequestDispatcher("feedbackDetails.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int feedbackId = Integer.parseInt(request.getParameter("feedback_id"));
         FeedbackDAO feedbackDAO = new FeedbackDAO();
        if (request.getParameter("status") != null) {
            int status_raw = Integer.parseInt(request.getParameter("status").toString());
            boolean status = true;
           
            if (status_raw == 0) {
                status = false;
                feedbackDAO.setFeedbackStatusOn(feedbackId);
            }else{
                status = true;
                feedbackDAO.setFeedbackStatusOff(feedbackId);
            }
        }
        
          response.sendRedirect("/Child-care-system/FeedbackManagerServlet");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
