
package Controller.manager;

import DAO.ReservationDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import model.CardMedicine;
import model.Reservation_Medical;
import model.user;

public class SaveExaminationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveExaminationServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaveExaminationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int res_id = Integer.parseInt(request.getParameter("reservation_id"));
        int service_id = Integer.parseInt(request.getParameter("service_id"));
        int child_id = Integer.parseInt(request.getParameter("child_id"));
        
        int reservationDetail_id = new ReservationDAO().getReDetailIdByRSC(res_id, service_id, child_id);
        
        String note = request.getParameter("diagnosis");
        HttpSession session = request.getSession();
        Map<Integer, CardMedicine> carts = (Map<Integer, CardMedicine>) session.getAttribute("cartMedicine");
        if(carts == null){
            carts = new LinkedHashMap<>();
        }
        
        // total amount
        double totalPrice = 0;
        for (Map.Entry<Integer, CardMedicine> entry : carts.entrySet()) {
            Integer skinId = entry.getKey();
            CardMedicine cart = entry.getValue();
            totalPrice+= cart.getMedicine().getMedicine_price()*cart.getQuantity();
        }
        user doctor =(user) session.getAttribute("account");
        Reservation_Medical r = new Reservation_Medical(1, reservationDetail_id, note, null, doctor.getUser_id());
        int reservationMedical_id = new ReservationDAO().CreateReservationMedicalReturnId(r);
        // luu OrderDetail
        new ReservationDAO().SaveMediCine(reservationMedical_id,carts);
        session.removeAttribute("cartMedicine");
        response.sendRedirect("DoctorMedicalexammination");
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
