
package Controller.manager;

import DAO.MedicineDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import model.medicine;

public class LoadMedicineByCategoryServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadMedicineByCategoryServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadMedicineByCategoryServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int res_id = Integer.parseInt(request.getParameter("reservation_id"));
        int service_id = Integer.parseInt(request.getParameter("service_id"));
        int child_id = Integer.parseInt(request.getParameter("child_id"));
        int cate_id = Integer.parseInt(request.getParameter("cate"));
        List<medicine> listMedicine = new MedicineDAO().getAllMedicineByCate(cate_id);
        PrintWriter out = response.getWriter();
        for (medicine m : listMedicine) {
            out.println("<li class=\"medicines\">\n" +
"                                <a href=\"\" class=\"card\">\n" +
"                                    <img src=\"./resouce/image/Medicine/"+m.getMedicine_image()+"\" height=\"100px\" class=\"card__image\" alt=\"\" />\n" +
"                                    <div class=\"card__overlay\">\n" +
"                                        <div class=\"card__header\">\n" +
"                                            <svg class=\"card__arc\" xmlns=\"http://www.w3.org/2000/svg\"><path /></svg>                 \n" +
"                                            <img class=\"card__thumb\" src=\"https://i.imgur.com/sjLMNDM.png\" alt=\"\" />\n" +
"                                            <div class=\"card__header-text\">\n" +
"                                                <h3 class=\"card__title\">"+m.getMedicine_name()+"</h3>\n" +
"                                                <span class=\"card__status\">"+m.getMedicine_price()+"$</span>\n" +
"                                            </div>          \n" +
"                                        </div>\n" +
"                                        <p class=\"card__description\">"+m.getMedinice_quantity()+"</p>\n" +
"                                    </div>\n" +
"                                </a>\n" +
"                                <div class=\"center-parent\">\n" +
"                                    <div class=\"center-me\">\n" +
"                                        <form action=\"addmedicinetocard\">\n" +
"                                            <input id=\"reservation_id\" type=\"hidden\" name=\"reservation_id\" value=\""+res_id+"\">\n" +
"                                            <input id=\"service_id\" type=\"hidden\" name=\"service_id\" value=\""+service_id+"\">\n" +
"                                            <input id=\"child_id\" type=\"hidden\" name=\"child_id\" value=\""+child_id+"\">\n" +
"                                            <input type=\"hidden\" name=\"medicine_id\" value=\""+m.getMedicine_id()+"\">\n" +
"                                            <button type=\"submit\" class=\"btn btn-success\">Add medicine</button>\n" +
"                                        </form>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </li>");
        }
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
