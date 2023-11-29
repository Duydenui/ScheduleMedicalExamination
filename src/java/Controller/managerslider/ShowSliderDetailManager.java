package Controller.managerslider;

import DAO.SliderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import model.sliderdetailmanager;

public class ShowSliderDetailManager extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShowSlideDetailManager</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShowSlideDetailManager at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String slider_id = request.getParameter("slider_id");
        int sid = 0;
        if (slider_id != null) {
            sid = Integer.parseInt(slider_id);
            sliderdetailmanager serdetail = new SliderDAO().sliderdetailmanagerbyID(sid);
            request.setAttribute("serdetail", serdetail);
            request.getRequestDispatcher("ShowSlideDetailManager.jsp").forward(request, response);
        }
        request.getRequestDispatcher("ShowSlideDetailManager.jsp").forward(request, response);
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
