
package Controller;

import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import model.user;

public class UserProfileServlet extends HttpServlet {

    String user_image = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserProfileServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserProfileServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        user user = new user();

        if (session.getAttribute("account") == null&&session.getAttribute("admin") == null) {
            
                request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        if (session.getAttribute("account") != null) {
            user = (user) session.getAttribute("account");
        } else {
            user = (user) session.getAttribute("admin");
        }
        if (user != null) {
            request.setAttribute("user", user);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        user user = (user) session.getAttribute("account");
        if (session.getAttribute("admin") != null) {
            user = (user) session.getAttribute("admin");
        }
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String image = request.getParameter("image");
        if (image.equals("")) {
            image = user.getUser_image();
        }
        if (new UserDAO().checkPhone(phone) == false) {
            String errPhone = "Phone number is Invalid!";
            request.setAttribute("errPhone", errPhone);
            request.setAttribute("user", user);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } else {
            int gender_raw = Integer.parseInt(request.getParameter("gender"));
            boolean gender = true;
            if (gender_raw == 0) {
                gender = false;
            }
            user edit = new user(user.getUser_id(), name, gender, address, user.getUser_password(), email, phone, user.getUser_role(), user.isUser_status(), image);
            new UserDAO().EditUser(edit);
            user userold = (user) session.getAttribute("account");
            if ((user) session.getAttribute("admin") != null) {
                userold = (user) session.getAttribute("admin");
            }
            user user_new = new UserDAO().getUserById(userold.getUser_id());
            session.removeAttribute("account");
            session.removeAttribute("admin");
            session.setAttribute("account", user_new);
            session.setAttribute("admin", user_new);
            request.setAttribute("user", user_new);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
