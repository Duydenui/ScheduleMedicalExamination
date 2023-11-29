package Controller.managerslider;

import DAO.SliderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.category;
import model.listslidermanager;

public class ListSliderManager extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListSliderManager</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListSliderManager at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        final int PAGE_SIZE = 5;

        List<category> listCategories = new SliderDAO().getAllCategories();
        HttpSession session = request.getSession();
        session.setAttribute("listCategories", listCategories);

        // Phan trang
        int page = 1;
        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }
        SliderDAO servicesDAO = new SliderDAO();
        List<listslidermanager> listser = new SliderDAO().getSliderWithPagging(page, PAGE_SIZE);
        int totalSlider = SliderDAO.getTotalSlider();
        int totalPage = totalSlider / PAGE_SIZE;
        if (totalSlider % PAGE_SIZE != 0) {
            totalPage += 1;
        }

        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listser", listser);
        request.getRequestDispatcher("ListSliderManager.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
            String id = request.getParameter("id");
            String status = request.getParameter("status");

            if (id != null && status != null && !id.equals("")) {
                int idd = Integer.parseInt(id);
                int statuss = Integer.parseInt(status);
                //    boolean st = Boolean.parseBoolean(request.getParameter("status"));
                        SliderDAO sliderDAO = new SliderDAO();
                if (statuss == 0) {
                    sliderDAO.setStatus(1, idd);
                } else {
                    sliderDAO.setStatus(0, idd);
                }
              //  response.sendRedirect("listslidermanager");
            }
            //request.getRequestDispatcher("ListSliderManager.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
