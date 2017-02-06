<%--
  Created by IntelliJ IDEA.
  User: MAVIRI 3
  Date: 2/5/2017
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>To Do List Maker</title>
    <style>
        div.container {border: 3px solid #7777dd}
        div.details {border: 2px solid #7777dd; padding-top: 5px; padding-left: 10px; padding-bottom: 20px; font-weight: bold}
    </style>
</head>
<body bgcolor="#aaaaff">
    <div class="container" style="height:50px">
        <button title="Create a New To Do List">Create</button>
        <button title="Load an Existing To Do List">Load</button>
        <button title="Save this To Do List">Save</button>
        <button title="Logout">Logout</button>
    </div>
    <h1>To Do List</h1>
    <div class="details">
        <h2>Details</h2>
        <label for="name">Name of Todo List: </label>
        <input type="text" name="name" id="name" maxlength="30" />

        <label for="owner">Owner: </label>
        <input type="text" name="owner" id="owner" maxlength="30" />
    </div>
</body>
</html>