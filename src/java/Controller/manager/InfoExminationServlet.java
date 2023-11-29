
package Controller.manager;

import DAO.CategoryDAO;
import DAO.ReservationDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.InformationReservation;
import model.InformationUserReservation;
import model.ListChildrenReservation;
import model.category;

public class InfoExminationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddExminationServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddExminationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO cateDAO = new CategoryDAO();
        List<category> listCate = cateDAO.getAllCategory();

        String rid = request.getParameter("res_id");
        if (rid != null) {
            int res_id = Integer.parseInt(rid);
            InformationUserReservation informationUserReservation = new ReservationDAO().getInformationUserByReserId(res_id);
            // thong tin reservation cua reservation_id
            InformationReservation informationReservation = new ReservationDAO().getInformationByReservationId(res_id);
            // list service cua reservaion_id day
            List<ListChildrenReservation> listServiceOfReservation = new ReservationDAO().getListServiceOfReservationChild(res_id);
            request.setAttribute("informationUserReservation", informationUserReservation);
            request.setAttribute("informationReservation", informationReservation);
            request.setAttribute("listServiceOfReservation", listServiceOfReservation);
        }
        request.setAttribute("listCate", listCate);

        // thong tin nguoi dung
        request.getRequestDispatcher("AddExamination.jsp").forward(request, response);
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
