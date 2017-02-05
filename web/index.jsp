<%--
  Created by IntelliJ IDEA.
  User: MAVIRI 3
  Date: 2/4/2017
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List Maker</title>
</head>
<body>
    <div style="background-color:#aaaaff">
        <h1>Welcome to the 'To Do List Maker' web app!</h1>
        <h3>Please <a href="register.html">sign up</a> or log in to continue.</h3>
    </div>
    <br />
    <form method="post" action="home.html">
        <div class="container">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" maxlength="30" required />
            <br /><br />
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required />
            <br /><br />
            <button type="submit">Login</button>
        </div>
    </form>
</body>
</html>
