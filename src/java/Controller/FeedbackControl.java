package Controller;

import DAO.BlogsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import model.feedback;
import DAO.FeedbackDAO;
import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.category;
import model.user;

public class FeedbackControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FeedbackController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("user_id") != null) {
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            user user = (user) new UserDAO().getUserById(user_id);
            request.setAttribute("user", user);
            System.err.println("Userrrrrrrrrrrrrrrrrrrrrr:"+user==null);
        }
        if(request.getParameter("res_id") != null){
            request.setAttribute("res_id", request.getParameter("res_id"));
        }
        BlogsDAO blog = new BlogsDAO();
        List<category> listC = blog.getAllCategory();
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("feedback.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int reservation_id = 0;
            int user_id = 0;
            if (request.getParameter("user_id") != null&&!request.getParameter("user_id").toString().equals("")) {
                user_id = Integer.parseInt(request.getParameter("user_id"));
                if (request.getParameter("res_id") != null&&!request.getParameter("res_id").toString().equals("")) {
                    reservation_id = Integer.parseInt(request.getParameter("res_id"));
                }
            }
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            int gender_raw = Integer.parseInt(request.getParameter("gender"));
            boolean gender = true;
            if (gender_raw == 0) {
                gender = false;
            }
            String phone = request.getParameter("phone");
            String note = request.getParameter("note");
            String star = request.getParameter("star");
            String image = request.getParameter("image");
            int rate = Integer.parseInt(request.getParameter("star"));
            feedback feedback = new feedback(reservation_id, user_id, note, name, gender, email, phone, image, rate, false);
            FeedbackDAO feedbackDAO = new FeedbackDAO();
            feedbackDAO.InsertNewFeedBack(feedback);
            response.sendRedirect("success.jsp");
//        } catch (Exception e) {
//            response.sendRedirect("error.jsp");
//        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
