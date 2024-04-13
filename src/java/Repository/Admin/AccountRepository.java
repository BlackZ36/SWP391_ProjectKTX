/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repository.Admin;

import Model.Account;
import Repository.DBHelper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author a
 */
public class AccountRepository extends DBHelper {

    private PreparedStatement st;
    private ResultSet rs;
    private String sql;

    public Account getAccountById(long accountId) {
        Account account = null;
        sql = "SELECT * FROM account WHERE id_account = ?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, accountId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                account = new Account();
                account.setIdAccount(rs.getLong("id_account"));
                account.setUsername(rs.getString("username"));
                account.setIdRole(rs.getLong("id_role"));
                account.setPassword(rs.getString("password"));
                account.setStatus(rs.getString("status"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
        }
        return account;
    }

    public void addAccount(Account account) {
        sql = "INSERT INTO account (username, id_role, password, status) VALUES (?, ?, ?, ?)";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, account.getUsername());
            st.setLong(2, account.getIdRole());
            st.setString(3, account.getPassword());
            st.setString(4, account.getStatus());
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }

    public void updateAccount(Account account) {
        sql = "UPDATE account SET username = ?, id_role = ?, password = ?, status = ? WHERE id_account = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, account.getUsername());
            st.setLong(2, account.getIdRole());
            st.setString(3, account.getPassword());
            st.setString(4, account.getStatus());
            st.setLong(5, account.getIdAccount());
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }

    public void deleteAccount(long accountId) {
        String sql = "DELETE FROM account WHERE id_account = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setLong(1, accountId);
            st.executeUpdate();
        } catch (SQLException e) {
            // Xử lý ngoại lệ hoặc thông báo lỗi ở đây
            e.printStackTrace();
        }
    }
}
