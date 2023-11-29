
package Controller.manager;

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

public class DeleteMedicineCardServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteMedicineCardServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteMedicineCardServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("medicine_id") != null) {
            int id = Integer.parseInt(request.getParameter("medicine_id"));
            int res_id = Integer.parseInt(request.getParameter("reservation_id"));
            int service_id = Integer.parseInt(request.getParameter("service_id"));
            int child_id = Integer.parseInt(request.getParameter("child_id"));
            HttpSession session = request.getSession();
            Map<Integer, CardMedicine> carts = (Map<Integer, CardMedicine>) session.getAttribute("cartMedicine");
            if (carts == null) {
                carts = new LinkedHashMap<>();
            }
            if (carts.containsKey(id)) {
                carts.remove(id);
            }
            session.setAttribute("cartMedicine", carts);
            // get card information
            double totalPrice = 0;
            for (Map.Entry<Integer, CardMedicine> entry : carts.entrySet()) {
                Integer skinId = entry.getKey();
                CardMedicine cart = entry.getValue();
                totalPrice += cart.getMedicine().getMedicine_price() * cart.getQuantity();
            }
            request.setAttribute("totalPrice", totalPrice);
            request.setAttribute("carts", carts);
            request.getRequestDispatcher("addmedicine?reservation_id=" + res_id + "&service_id=" + service_id + "&child_id=" + child_id).forward(request, response);
        } else {
            doPost(request, response);
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
