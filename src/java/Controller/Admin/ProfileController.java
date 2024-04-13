/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Admin;

import Model.Account;
import Model.User;
import Repository.Admin.AccountRepository;
import Repository.Admin.UserRepository;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author a
 */
@WebServlet(name = "ProfileController", urlPatterns = {"/admin/user"})
public class ProfileController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String aid = request.getParameter("accountId");

        int id = 0;
        try {
            id = Integer.parseInt(aid);
        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/404.html");
            rd.forward(request, response);
            return;
        }

        UserRepository userRepository = new UserRepository();
        AccountRepository accountRepository = new AccountRepository();

        User user = userRepository.getUserByAccountId(id);
        Account account = accountRepository.getAccountById(id);

        if (user == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/404.html");
            rd.forward(request, response);
            return;
        }
        
        request.setAttribute("user", user);
        request.setAttribute("account", account);
        RequestDispatcher rd = request.getRequestDispatcher("/admin/profile.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
