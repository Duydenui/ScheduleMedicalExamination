    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.blog;
import model.category;

/**
 *
 * @author _DELL_
 */
public class BlogsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<blog> getAllBlogs() {
        List<blog> list = new ArrayList<>();
        String query = "select * from blogs";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<blog> searchByTitle(String txtSearch) {
        List<blog> list = new ArrayList<>();
        String query = "select * from blogs where title like ?";

        try {
            conn = new DBContext().getConnection(); //mở kết nối tới sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9)));
            }
        } catch (Exception e) {
            System.out.println("searchbyName" + e.getMessage());
        }
        return list;
    }

    public int getNumberPage() {
        String query = "  select count(*) from blogs";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 3;
                if (total % 3 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<blog> getPaging(int index) {
        String query = " select * from blogs\n"
                + "  order by blog_id\n"
                + "  offset ? rows\n"
                + "  fetch  first 3 rows only";
        List<blog> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<category> getAllCategory() {
        List<category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<blog> getBlogByCategory(String cid) {
        List<blog> list = new ArrayList<>();
        String query = "  select * from blogs where category_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public blog getBlogById(String id) {

        String query = "select  * from blogs where blog_id = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new blog(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    
    
    public static void main(String[] args) {
        BlogsDAO blog = new BlogsDAO();
        List<blog> list = blog.getAllBlogs();
        String cid = "1";
        List<blog> list1 = blog.getBlogByCategory(cid);
        List<category> listC = blog.getAllCategory();
        for (blog o : list1) {
            System.out.println(o);
        }
    }
}

    
