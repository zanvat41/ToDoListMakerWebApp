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
    <style>
        /**
        The CSS styling for the background of the page
         */
        .bodyBackground {
            background-color: #f1f1f1;
        }

        /**
        The CSS Styling for the top header text
         */
        .welcomeText {
            color:#4d4d4d;
            text-align:center;
            font-family:"Arial", Helvetica, sans-serif;
            font-size:30px;
        }

        /**
        The CSS Styling for the top header subtext
         */
        .promptText {
            color:#4d4d4d;
            text-align:center;
            font-family:"Arial", Helvetica, sans-serif;
            font-size:20px;
        }

        /**
        The CSS styling for the register button while unused, hovered, and clicked in
         */
        .registerButton {
            -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
            -webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
            box-shadow:inset 0px 1px 0px 0px #ffffff;
            background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #f6f6f6));
            background:-moz-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
            background:-webkit-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
            background:-o-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
            background:-ms-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
            background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0);
            background-color:#ffffff;
            -moz-border-radius:5px;
            -webkit-border-radius:5px;
            border-radius:5px;
            border:2px solid #969696;
            display:inline-block;
            cursor:pointer;
            color:#4d4d4d;
            font-family:"Arial", Helvetica, sans-serif;
            font-size:18px;
            font-weight:bold;
            padding:6px 24px;
            text-decoration:none;
            text-shadow:0px 1px 0px #ffffff;
        }
        .registerButton:hover {
            background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f6f6f6), color-stop(1, #ffffff));
            background:-moz-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
            background:-webkit-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
            background:-o-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
            background:-ms-linear-gradient(top, #f6f6f6 5%, #ffffff 100%);
            background:linear-gradient(to bottom, #f6f6f6 5%, #ffffff 100%);
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f6f6f6', endColorstr='#ffffff',GradientType=0);
            background-color:#f6f6f6;
        }
        .registerButton:active {
            position:relative;
            top:1px;
            border:1px solid #f931ac;
        }


        /**
        The CSS Styling for the container holding the form elements
            all this does is center the form elements so they are in the center of the page
         */
        .container {
            width: 50%;
            margin: 0 auto;
        }

        /**
        The CSS styling for the text fields normally and while being used (focus).
         */
        input[type=text] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=text]:focus {
            border: 3px solid #f931ac;
        }

        /**
        The CSS styling for the password fields normally and while being used (focus).
         */
        input[type=password] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=password]:focus {
            border: 2px solid #f931ac;
        }
    </style>
</head>
<body class="bodyBackground">
    <div>
        <h1 class="welcomeText">Welcome to the 'To Do List Maker' web app!</h1>
        <h3 class="promptText">Please enter your desired username and password to register.</h3>
    </div>
    <br />
    <form method="post" action="index.jsp">
        <div class="container">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" maxlength="30" required />
            <br /><br />
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required />
            <br /><br />
            <button class="registerButton" type="submit">Register</button>
        </div>
    </form>
</body>
</html>