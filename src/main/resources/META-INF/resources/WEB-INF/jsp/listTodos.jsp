<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <h1 class="todos-heading">Your Todos:</h1>
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.isDone}</td>
                    <td>
                        <a href="update-todo?id=${todo.id}" class="btn btn-warning btn-sm">Update</a>
                        <a href="delete-todo?id=${todo.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="btn btn-success btn-add-todo">Add Todo</a>
</div>
<%@ include file="common/footer.jspf" %>

<style>
    .todos-heading {
        margin-bottom: 20px;
        color: hsl(0, 18%, 3%);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        color: hsl(0, 18%, 3%);
    }

    th, td {
        border: 1px solid #050607;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #16181b;
        color: hsl(0, 18%, 3%);
    }

    tbody tr:nth-child(even) {
        background-color: hwb(0 96% 2%);
    }

    .btn {
        margin-right: 5px;
        transition: transform 0.3s ease-in-out;
    }

    .btn-add-todo {
        background-color: #28a745;
        color: white;
        border: 2px solid #218838;
        border-radius: 5px;
        padding: 10px 15px;
        text-decoration: none;
        display: inline-block;
        font-size: 18px;
        font-weight: 500;
        transition: background-color 0.3s, transform 0.3s;
    }

    .btn-add-todo:hover {
        background-color: #218838;
        transform: scale(1.05);
    }
</style>
