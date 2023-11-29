package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.PostList;
import model.blog;
import model.DoctorWorkingSlot;
import model.ScheduleDoctor;

public class DoctorWorkingSlotDAO {

    public List<DoctorWorkingSlot> getAlls() {
        List<DoctorWorkingSlot> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from DoctorWorkingSlot where is_free is null or is_free = 1";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DoctorWorkingSlot blog = new DoctorWorkingSlot(rs.getInt("id"), rs.getInt("doctor_id"), rs.getInt("slot"), rs.getDate("date"), rs.getBoolean("is_free"));
                list.add(blog);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<DoctorWorkingSlot> getAllsByDate(Date date) {
        List<DoctorWorkingSlot> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from DoctorWorkingSlot where date = ? and is_free is null or is_free = 1";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setDate(1, date);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DoctorWorkingSlot blog = new DoctorWorkingSlot(rs.getInt("id"), rs.getInt("doctor_id"), rs.getInt("slot"), rs.getDate("date"), rs.getBoolean("is_free"));
                list.add(blog);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void setBusy(int doctorId, int slot) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE DoctorWorkingSlot\n"
                    + "   SET [is_free] = 0\n"
                    + " WHERE doctor_id = ? and slot = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, doctorId);
            ps.setInt(2, slot);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public ArrayList<ScheduleDoctor> getShedulebyWeek(Date sqlMon, Date sqlSun) {
        ArrayList<ScheduleDoctor> data = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "  SELECT\n"
                    + "    u.[user_fullname] AS [doctorName],\n"
                    + "    dws.[date],\n"
                    + "    dws.[slot]\n"
                    + "FROM\n"
                    + "    [ChildrenCare].[dbo].[DoctorWorkingSlot] AS dws\n"
                    + "INNER JOIN\n"
                    + "    [ChildrenCare].[dbo].[user] AS u ON dws.[doctor_id] = u.[user_id]\n"
                    + "	  where  date>= ? and date<= ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setDate(1, sqlMon);
            ps.setDate(2, sqlSun);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ScheduleDoctor s = new ScheduleDoctor(rs.getString("doctorName"), rs.getDate("date"), rs.getInt("slot"));
                data.add(s);
            }
        } catch (Exception e) {
            System.out.println("getShedulebyWeek" + e);
        }
        return data;
    }

    public ArrayList<ScheduleDoctor> getShedulebyDoctor(int doctor_id) {
        ArrayList<ScheduleDoctor> data = new ArrayList<ScheduleDoctor>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "  SELECT\n"
                    + "    u.[user_fullname] AS [doctorName],\n"
                    + "    dws.[date],\n"
                    + "    dws.[slot]\n"
                    + "FROM\n"
                    + "    [ChildrenCare].[dbo].[DoctorWorkingSlot] AS dws\n"
                    + "INNER JOIN\n"
                    + "    [ChildrenCare].[dbo].[user] AS u ON dws.[doctor_id] = u.[user_id]\n"
                    + "	  where  doctor_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, doctor_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ScheduleDoctor s = new ScheduleDoctor(rs.getString("doctorName"), rs.getDate("date"), rs.getInt("slot"));
                data.add(s);
            }
        } catch (Exception e) {
        }
        return data;
    }

    public static void main(String[] args) {
        DoctorWorkingSlotDAO s = new DoctorWorkingSlotDAO();
        LocalDate localDate = LocalDate.parse("2023-11-19");
        LocalDate localDate1 = LocalDate.parse("2023-11-20");
        Date sqlMon = Date.valueOf(localDate);
        Date sqlSun = Date.valueOf(localDate1);

        List<ScheduleDoctor> list = s.getShedulebyWeek(sqlMon, sqlSun);
        for (ScheduleDoctor o : list) {
            System.out.println(o);
        }
    }

}
