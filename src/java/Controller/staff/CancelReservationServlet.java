
package Controller.staff;

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
import model.reservation;
import model.reservationlist;
import model.user;

public class CancelReservationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CancelReservationServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CancelReservationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int res_id = Integer.parseInt(request.getParameter("res_id"));
        reservation reservation = new ReservationDAO().getReservationByID(res_id);
        user user = new UserDAO().getUserById(reservation.getUser_id());
        new ReservationDAO().changeStatus(res_id, 3);
        String reason = request.getParameter("reason");
//        SendEmail sm = new SendEmail(); 
//        sm.sendEmail(user, "Your appointment has been cancelled!\n"+reason);
        ReservationDAO reservationDAO = new ReservationDAO();
        List<reservationlist> reservationlist = new ReservationDAO().getAllReservationList2();
        request.setAttribute("reservationlist", reservationlist);
        request.getRequestDispatcher("ReservationList.jsp").forward(request, response);
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
