
package Controller.manager;

import DAO.ReservationDAO;
import DAO.UserDAO;
import SendEmail.SendEmail;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.MyReservation;
import model.reservation;
import model.user;

public class SuccessReservationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SuccessReservationServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SuccessReservationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int res_id = Integer.parseInt(request.getParameter("res_id"));
        new ReservationDAO().changeStatus(res_id, 4);
        ReservationDAO reserDAO = new ReservationDAO();
        List<MyReservation> reserList = reserDAO.getAllReservationSubmitted();
        reservation reservation = new ReservationDAO().getReservationByID(res_id);
        user user = new UserDAO().getUserById(reservation.getUser_id());
        SendEmail sm = new SendEmail();
//            sm.sendEmail(user, "Thank you very much for using our child care center services.\n"
//                    + "Any feedback you can send to: "
//                    + "http://localhost:8080/Child-care-system/feedback?res_id="+res_id+"&&user_id="+user.getUser_id());
        request.setAttribute("reserList", reserList);
        request.getRequestDispatcher("DoctorMedicalexammination").forward(request, response);
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
