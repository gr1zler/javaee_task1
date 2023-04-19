package back_end.servlet;
import back_end.DB.DBTask;
import back_end.DB.Task;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

@WebServlet(value = "/add-task")
public class Addtask extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String deadLine = request.getParameter("task_deadline");

        Task task = new Task();
        task.setName(name);
        task.setDiscription(description);
        task.setDeadlineDate(deadLine);

        DBTask.addtask(task);

        response.sendRedirect("/");

    }

}