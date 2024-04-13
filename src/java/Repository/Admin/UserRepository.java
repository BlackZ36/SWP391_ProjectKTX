/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repository.Admin;

import Model.User;
import Repository.DBHelper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author a
 */
public class UserRepository extends DBHelper {

    private PreparedStatement st;
    private ResultSet rs;
    private String sql;

    public List<User> getAll(Integer limit, Integer offset) {
        List<User> users = new ArrayList<>();
        sql = "SELECT * FROM user";
        if (limit != null && offset != null) {
            sql += " LIMIT " + limit + " OFFSET " + offset;
        }

        try {

            st = connection.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setIdUser(rs.getLong("id_user"));
                user.setIdAccount(rs.getLong("id_account"));
                user.setName(rs.getString("name"));
                user.setDob(rs.getString("dob"));
                user.setAddress(rs.getString("address"));
                user.setNumberCCCD(rs.getString("number_cccd"));
                user.setNameUniversity(rs.getString("name_university"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setImageRenter(rs.getString("image_renter"));
                user.setGender(rs.getString("gender"));
                user.setGmail(rs.getString("gmail"));
                users.add(user);
            }
        } catch (SQLException e) {
        }
        return users;
    }

    public List<User> getManagers(Integer limit, Integer offset) {
        List<User> managers = new ArrayList<>();
        sql = "SELECT u.*, a.id_role FROM user u JOIN account a ON u.id_account = a.id_account WHERE a.id_role IN (1, 2)";
        if (limit != null && offset != null) {
            sql += " LIMIT " + limit + " OFFSET " + offset;
        }
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setIdUser(rs.getLong("id_user"));
                user.setIdAccount(rs.getLong("id_account"));
                user.setName(rs.getString("name"));
                user.setDob(rs.getString("dob"));
                user.setAddress(rs.getString("address"));
                user.setNumberCCCD(rs.getString("number_cccd"));
                user.setNameUniversity(rs.getString("name_university"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setImageRenter(rs.getString("image_renter"));
                user.setGender(rs.getString("gender"));
                user.setGmail(rs.getString("gmail"));
                managers.add(user);
            }
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
        return managers;
    }

    public List<User> getRenters(Integer limit, Integer offset) {
        List<User> renters = new ArrayList<>();
        sql = "SELECT u.*, a.id_role FROM user u JOIN account a ON u.id_account = a.id_account WHERE a.id_role = 3";
        if (limit != null && offset != null) {
            sql += " LIMIT " + limit + " OFFSET " + offset;
        }

        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setIdUser(rs.getLong("id_user"));
                user.setIdAccount(rs.getLong("id_account"));
                user.setName(rs.getString("name"));
                user.setDob(rs.getString("dob"));
                user.setAddress(rs.getString("address"));
                user.setNumberCCCD(rs.getString("number_cccd"));
                user.setNameUniversity(rs.getString("name_university"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setImageRenter(rs.getString("image_renter"));
                user.setGender(rs.getString("gender"));
                user.setGmail(rs.getString("gmail"));
                renters.add(user);
            }
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
        return renters;
    }

    public void addUser(User user) {
        String sql = "INSERT INTO user (id_account, name, dob, address, number_cccd, name_university, phone_number, image_renter, gender, gmail) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setLong(1, user.getIdAccount());
            st.setString(2, user.getName());
            st.setString(3, user.getDob());
            st.setString(4, user.getAddress());
            st.setString(5, user.getNumberCCCD());
            st.setString(6, user.getNameUniversity());
            st.setString(7, user.getPhoneNumber());
            st.setString(8, user.getImageRenter());
            st.setString(9, user.getGender());
            st.setString(10, user.getGmail());
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        String sql = "UPDATE user SET id_account = ?, name = ?, dob = ?, address = ?, number_cccd = ?, name_university = ?, phone_number = ?, image_renter = ?, gender = ?, gmail = ? WHERE id_user = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setLong(1, user.getIdAccount());
            st.setString(2, user.getName());
            st.setString(3, user.getDob());
            st.setString(4, user.getAddress());
            st.setString(5, user.getNumberCCCD());
            st.setString(6, user.getNameUniversity());
            st.setString(7, user.getPhoneNumber());
            st.setString(8, user.getImageRenter());
            st.setString(9, user.getGender());
            st.setString(10, user.getGmail());
            st.setLong(11, user.getIdUser());
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }

    public void deleteUser(long userId) {
        sql = "DELETE FROM user WHERE id_user = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setLong(1, userId);
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }

    public User getUserByAccountId(long id) {
        User user = null;
        sql = "SELECT * FROM user WHERE id_user = ?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setIdUser(rs.getLong("id_user"));
                user.setIdAccount(rs.getLong("id_account"));
                user.setName(rs.getString("name"));
                user.setDob(rs.getString("dob"));
                user.setAddress(rs.getString("address"));
                user.setNumberCCCD(rs.getString("number_cccd"));
                user.setNameUniversity(rs.getString("name_university"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setImageRenter(rs.getString("image_renter"));
                user.setGender(rs.getString("gender"));
                user.setGmail(rs.getString("gmail"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
        }
        return user;
    }
}
