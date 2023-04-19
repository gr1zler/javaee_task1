package back_end.servlet;

import back_end.DB.DBTask;
import back_end.DB.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/detail")
public class Details extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("task_id"));
        Task task=DBTask.getTask(id);
        request.setAttribute("task", task);
        request.getRequestDispatcher("/web_pages/Details.jsp").forward(request,response);
    }
}