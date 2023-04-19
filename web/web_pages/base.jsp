<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="back_end.DB.Task"%>
<%@ page import="java.util.StringTokenizer" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #763fd2">
    <a class="navbar-brand br-white" href="#" style="color: white">TASK MANAGER</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active br-white" href="#" style="color: white">Все задания</a>
        </div>
    </div>
</nav>
<div style="margin-top: 60px">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addtask" style="background-color: #763fd2">
        + Add Task
    </button>
    <div class="modal fade" id="addtask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Task</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <%@include file="form_page.jsp"%>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" form="adtask">Submit</button>
                </div>
            </div>
        </div>
    </div>
</div>

<table class="table" style="margin-top: 25px">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Description</th>
        <th scope="col">Deadline</th>
        <th scope="col">DETAILS</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Task>tasks=(ArrayList<Task>) request.getAttribute("tasks");
        if(tasks!=null){
            for(Task task:tasks){
    %>
    <tr>
        <th scope="row"><%=task.getID()%></th>
        <td><%=task.getName()%></td>
        <td><%=task.getDiscription()%></td>
        <td><%=task.getDeadlineDate()%></td>
        <td><a class="btn btn-success btn-sm" style="background-color: #763fd2" href="/detail?task_id=<%=task.getID()%>">DETAILS</a>
        </td>
    </tr>

    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>
