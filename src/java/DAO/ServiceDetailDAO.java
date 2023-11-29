    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.image;
import model.service;
import model.servicedetailmanager;

/**
 *
 * @author _DELL_
 */
public class ServiceDetailDAO {
public List<service> getAllServices() {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service\n"
                    + "order by service_title";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<image> getAllIMGbyServiceID(int id) {
        List<image> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service_image where service_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                image image = new image(rs.getInt("image_id"), rs.getInt("service_id"), rs.getString("image_link"));
                list.add(image);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public service getServiceById(String id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [service]\n"
                    + "where service_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                return ser;
            }
        } catch (Exception e) {
        }
        return null;
    }
        public List<service> getServicesByTitle(String txtSearch) {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service where service_title like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, "\"" + txt + "*\"");
//            ps.setString(2, "\"" + txt + "*\"");
//            ps.setString(3, "%" + txt + "%");
                ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}

    
