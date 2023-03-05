<%-- 
    Document   : admin_signin
    Created on : 04-Mar-2023, 10:18:19 pm
    Author     : sakthivelan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Signin</title>
        <link rel="stylesheet" type="text/css" media="all" href="CSS/admin_signin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            <div class="login-container">
		<div class="logo">
			<img src="admin-logo.png" alt="Admin Logo">
			<h2>Admin Login</h2>
		</div>
                <form action="Admin/home.jsp" method="post">
			<label for="username">Username</label>
			<input type="text" id="username" name="username" required>

			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>

			<input type="submit" value="Login">
		</form>
            </div>
    </body>
</html>
