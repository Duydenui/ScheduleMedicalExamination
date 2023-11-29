/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.staff;

import DAO.DoctorWorkingSlotDAO;
import DAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.ScheduleDoctor;
import model.user;

/**
 *
 * @author _DELL_
 */
public class DoctorSchedule extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //set date
        String date_raw = request.getParameter("xdate");
        LocalDate date;

        if (date_raw == null) {
            date = LocalDate.now();
        } else {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            date = LocalDate.parse(date_raw, formatter);
        }

        request.setAttribute("date", date);
        LocalDate monday = date;
        while (monday.getDayOfWeek() != DayOfWeek.MONDAY) {
            monday = monday.minusDays(1);
        }
        //Monday
        Date sqlMon = Date.valueOf(monday);

        ArrayList<Date> week = new ArrayList<>();
        for (int i = 0; i <= 6; i++) {
            week.add(Date.valueOf(monday.plusDays(i)));
        }
        request.setAttribute("week", week);
        //Sunday
        Date sqlSun = week.get(6);
        DoctorWorkingSlotDAO schedule = new DoctorWorkingSlotDAO();
        ArrayList<ScheduleDoctor> schedules = schedule.getShedulebyWeek(sqlMon, sqlSun);
        //slot 1 ngay
        int size = 4;
        ArrayList<Integer> slot_index = new ArrayList<>();
        for (int i = 1; i <= size; i++) {
            slot_index.add(i);
        }
        request.setAttribute("slot_index", slot_index);
//        //slot trong DB
        ArrayList<Integer> slot_DB = new ArrayList<>();
        for (ScheduleDoctor s : schedules) {
            System.out.println(s.getDoctorName());
            slot_DB.add(s.getSlot());
        }
        request.setAttribute("slot_DB", slot_DB);

        // Lưu danh sách lịch học trong phạm vi yêu cầu
        request.setAttribute("schedules", schedules);
        //List Doctor
        UserDAO userDAO = new UserDAO();
        List<user> doctorList = userDAO.getAllUserByRoleId(2);
        request.setAttribute("doctorList", doctorList);
        request.getRequestDispatcher("DoctorSchedule.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("DoctorSchedule.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
