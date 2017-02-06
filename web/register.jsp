<%--
  Created by IntelliJ IDEA.
  User: MAVIRI 3
  Date: 2/5/2017
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
    <form method="post" action="index.jsp">
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