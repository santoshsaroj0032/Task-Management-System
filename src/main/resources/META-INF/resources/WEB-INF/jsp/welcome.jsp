<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <h1 class="welcome-heading">Welcome, ${name}!</h1>
    <hr>
    <a href="list-todos" class="manage-todos-link">
        Manage Your Todos
    </a>
</div>
<%@ include file="common/footer.jspf" %>

<style>
   body {
    background: linear-gradient(to right, #f5f5f508, #776e6e);
}

    .welcome-heading {
        font-size: 24px;
        color: rgb(51, 2, 2);
        margin-top: 20px;
    }

    .manage-todos-link {
        color: white;
        background-color: rgb(51, 2, 2);
        padding: 15px 20px;
        text-decoration: none;
        border-radius: 10px;
        border: 2px solid black;
        display: inline-block;
        font-size: 18px;
        font-weight: 400;
        transition: background-color 0.3s, transform 0.3s;
    }

    .manage-todos-link:hover {
        background-color: rgb(71, 12, 12);
        transform: scale(1.05);
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
</style>
