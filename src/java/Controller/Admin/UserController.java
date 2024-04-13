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
import java.util.List;

/**
 *
 * @author a
 */
@WebServlet(name = "UserController", urlPatterns = {"/admin/user-manager"})
public class UserController extends HttpServlet {

    private final int LIMIT = 5; // hiển thị số user trên 1 trang

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Repository
        UserRepository userRepository = new UserRepository();

        // Lấy ra parameter từ URL
        String typeParam = request.getParameter("type");
        String pageParam = request.getParameter("page");

        int page = 1;
        if (pageParam != null) {
            try {
                int p = Integer.parseInt(pageParam);
                if(p != 0){
                    page = p;
                }
            } catch (NumberFormatException e) {
                RequestDispatcher rd = request.getRequestDispatcher("/404.html");
                rd.forward(request, response);
                return;
            }
        }

        // Kiểm tra parameter "Type"
        if (typeParam != null) {
            try {
                int type = Integer.parseInt(typeParam);
                switch (type) {
                    case 1: {
                        //tính offset
                        int offset = (page - 1) * LIMIT;

                        // Nếu "Type" = 1, sử dụng AccountRepository.getManagers
                        List<User> totalManagers = userRepository.getManagers(null, null);
                        List<User> managers = userRepository.getManagers(LIMIT, offset);

                        //Tính số trang cần để hiển thị
                        int totalPage = (int) Math.ceil((double) totalManagers.size() / LIMIT);
                        if (totalPage == 0) {
                            totalPage = 1;
                        }
                        // Đưa danh sách managers vào request để sử dụng trong JSP
                        request.setAttribute("users", managers);
                        request.setAttribute("page", page);
                        request.setAttribute("type", type);
                        request.setAttribute("totalPage", totalPage);
                        request.setAttribute("title", "Danh Sách Quản Trị Viên");
                        break;
                    }
                    case 2: {
                        //tính offset
                        int offset = (page - 1) * LIMIT;

                        // Nếu "Type" = 2, sử dụng AccountRepository.getRenters
                        List<User> totalRenters = userRepository.getRenters(null, null);
                        List<User> renters = userRepository.getRenters(LIMIT, offset);

                        //Tính số trang cần để hiển thị
                        int totalPage = (int) Math.ceil((double) totalRenters.size() / LIMIT);
                        if (totalPage == 0) {
                            totalPage = 1;
                        }

                        // Đưa danh sách managers vào request để sử dụng trong JSP
                        request.setAttribute("users", renters);
                        request.setAttribute("page", page);
                        request.setAttribute("type", type);
                        request.setAttribute("totalPage", totalPage);
                        request.setAttribute("title", "Danh Sách Sinh Viên");
                        break;
                    }
                    default:
                        RequestDispatcher rd = request.getRequestDispatcher("/404.html");
                        rd.forward(request, response);
                        return;
                }

            } catch (NumberFormatException e) {
                RequestDispatcher rd = request.getRequestDispatcher("/404.html");
                rd.forward(request, response);
                return;
            }
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/404.html");
            rd.forward(request, response);
            return;
        }

        // Chuyển hướng request đến "/admin/user.jsp"
        RequestDispatcher rd = request.getRequestDispatcher("/admin/user.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
