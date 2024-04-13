/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repository.Admin;

import Model.Account;
import Model.User;
import Repository.Admin.UserRepository;
import java.sql.SQLException;
import java.util.List;

public class Test {

    public static void main(String[] args) {
        AccountRepository a = new AccountRepository();
        Account a1 = a.getAccountById(1);
        System.out.println(a1.getIdRole());
    }
}
