/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repository;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBHelper {

    public Connection connection;

    public DBHelper() {

        try {
            String username = "root"; // Tên người dùng của MySQL
            String password = "admin"; // Mật khẩu của MySQL
            String url = "jdbc:mysql://localhost:3306/ktx_db"; // URL kết nối đến cơ sở dữ liệu MySQL

            // Tạo kết nối
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(new DBHelper().connection);
        } catch (Exception e) {
            
        }
    }
}
