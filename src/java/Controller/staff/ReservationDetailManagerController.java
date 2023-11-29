package Controller.staff;

import DAO.ReservationDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.ChildrenInfo;
import model.InformationReservation;
import model.InformationUserReservation;
import model.ListServiceOfReservation;
import model.ReservationDetailManager;

public class ReservationDetailManagerController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            ReservationDAO reservationDAO = new ReservationDAO();
            List<ReservationDetailManager> reservationDetail = new ReservationDAO().getReservationDetail2();
            request.setAttribute("reservationDetail", reservationDetail);
           request.getRequestDispatcher("ReservationDetailManager.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String rid = request.getParameter("res_id");
        if (rid != null) {
            int res_id = Integer.parseInt(rid);
            InformationUserReservation informationUserReservation = new ReservationDAO().getInformationUserByReserId(res_id);
            // thong tin reservation cua reservation_id
            InformationReservation informationReservation = new ReservationDAO().getInformationByReservationId(res_id);
            // list service cua reservaion_id day
            List<ListServiceOfReservation> listServiceOfReservation = new ReservationDAO().getListServiceOfReservation(res_id);
            // Lấy thông tin children
            ChildrenInfo childrenInfo = new ReservationDAO().getChildrenInfoByReservationDetailId(res_id);
            
            request.setAttribute("childrenInfo", childrenInfo);           
            request.setAttribute("informationUserReservation", informationUserReservation);
            request.setAttribute("informationReservation", informationReservation);
            request.setAttribute("listServiceOfReservation", listServiceOfReservation);
        }

        // thong tin nguoi dung
        request.getRequestDispatcher("ReservationDetailManager.jsp").forward(request, response);
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