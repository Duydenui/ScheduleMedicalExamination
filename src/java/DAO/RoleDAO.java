/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.userRole;

/**
 *
 * @author win
 */
public class RoleDAO {
    public List<userRole> getAllRole() {
        List<userRole> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [role]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                userRole role = new userRole(rs.getInt(1), rs.getString(2));
                list.add(role);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public class ScheduleInsertException extends Exception {
    public ScheduleInsertException(String message) {
        super(message);
    }
}

//        public void insertSchedule(String doctorName, String date, String slot) throws ScheduleInsertException {
//        try {
//            Connection conn = new DBContext().getConnection();
//            String sql = "INSERT INTO [dbo].[DoctorWorkingSlot] ([doctor_id], [date], [slot], [is_free])\n"
//                    + "VALUES (?, ?, ?, null)";
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, doctorName);
//            ps.setString(2, date);
//            ps.setString(3, slot);
//            ResultSet rs = ps.executeQuery();
//        } catch (Exception e) {
//             e.printStackTrace();
//        throw new ScheduleInsertException("Lỗi khi thêm lịch hẹn.");
//        }
//    }
    public void insertSchedule(String doctorName, String date, String slot) throws ScheduleInsertException, SQLException {
    Connection conn = null;
    PreparedStatement ps = null;

    try {
        conn = new DBContext().getConnection();
        String sql = "INSERT INTO [dbo].[DoctorWorkingSlot] ([doctor_id], [date], [slot], [is_free])\n"
                + "VALUES (?, ?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, doctorName);
        ps.setString(2, date);
        ps.setString(3, slot);
        ps.setNull(4, java.sql.Types.INTEGER); // Đặt giá trị null cho cột is_free
        ps.executeUpdate(); // Thực hiện câu lệnh INSERT, không cần ResultSet

    } catch (Exception e) {
        e.printStackTrace();
        throw new ScheduleInsertException("Lỗi khi thêm lịch hẹn.");
    } finally {
        try {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}

}
