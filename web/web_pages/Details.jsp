<%@ page import="back_end.servlet.Details" %>
<%@ page import="back_end.DB.Task" %>
<%@ page contentType="text/html;charset=UTF-8" %>
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
<div class="container mt-5 pb-5">
    <%
        Task task = (Task) request.getAttribute("task");
    %>
    <div class="row">
        <div class="col-12">
            <label>NAME : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>DESCRIPTION : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" name="task_description" class="form-control" rows="5" value="<%=task.getDiscription()%>"></input>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>DEADLINE DATE : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="date" class="form-control" name="task_deadline" value="<%=task.getDeadlineDate()%>">
        </div>
    </div>

            <div class="row mt-3">
                <div class="col-12" style="display: inline-flex">
                    <a class="btn btn-success btn-sm" style="background-color: #763fd2 ;margin-right: 30px" href="http://localhost:8080">Go Back</a>
                    <a class="btn btn-success btn-sm" style="background-color: red" href="/delete-task?id=<%=task.getID()%>">Delete</a>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>