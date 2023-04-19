package back_end.servlet;

import back_end.DB.DBTask;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/home.html")
public class Home_Servlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("tasks", DBTask.getAlltask());
        request.getRequestDispatcher("/web_pages/base.jsp").forward(request,response);
    }
}
