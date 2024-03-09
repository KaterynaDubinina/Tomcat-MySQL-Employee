<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employees</title>
    <style>
        body {
            background: linear-gradient(to bottom, #121212 5%, #545454 100%);
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .header {
            background-color: #333;
            overflow: hidden;
            height: 50px;
            color: white;
            text-align: center;
            font-size: 10px;
            padding: 0;
            margin: 0;
        }
        .menu-button {
            float: left;
            background-color: inherit;
            border: none;
            color: white;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            cursor: pointer;
            margin-left: 10px;
        }
        .content {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            text-align: center;
            margin-top: 10px;
            color: white;
        }
        .image-container {
            margin-top: 30px;
            width: 700px;
        }
        .table-container {
            margin-top: 20px;
            margin-right: 100px;
            flex-grow: 1;
        }
        table {
            border-collapse: collapse;
            width: 600px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
            color: white;
        }
        th {
            background-color: #333;
            color: white;
        }
        caption {
            font-size: 60px;
            color: white;
        }
        .dropdown {
            float: left;
            overflow: hidden;
            margin-top: 10px;
        }
        .dropdown .dropbtn {
            font-size: 20px;
            border: none;
            outline: none;
            color: white;
            padding: 10px;
            background-color: #545454;
            font-family: inherit;
            margin: 0;
            cursor: pointer;
        }
        .menu-content {
            display: none;
            position: absolute;
            background-color: white;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            text-align: left;
            width: 160px;
            height: 43px;
            left: 0;
        }
        .menu-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .menu-content a:hover {
            background-color: #ddd;
            color: black;
        }
        .dropdown:hover .menu-content {
            display: block;
        }
        .editButton, .deleteButton {
            background-color: #545454;
            color: black;
            padding: 8px 16px;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        .editButton:hover, .deleteButton:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div class="header">
        <button class="menu-button" onclick="toggleMenu()"> ☰ Menu </button>
        <h1>&#9642;&#65039; Employees &#9642;&#65039; </h1>
    </div>

    <div id="menu" class="dropdown">
        <div class="menu-content">
            <a href="<%=request.getContextPath()%>/new" class="greenButton"> &#9642;&#65039; Add Employee</a>
        </div>
    </div>

    <div class="content">
        <div class="image-container">
            <img src="https://kartinki.pibig.info/uploads/posts/2023-04/1681373479_kartinki-pibig-info-p-ofisnii-rabotnik-kartinka-arti-vkontakte-38.png" alt="Image">
        </div>
        <div class="table-container">
            <table border="1" cellpadding="5">
                <caption><h2>&#9642;&#65039; Employees &#9642;&#65039; </h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="employee" items="${listEmployee}">
                    <tr>
                        <td><c:out value="${employee.id}" /></td>
                        <td><c:out value="${employee.name}" /></td>
                        <td><c:out value="${employee.position}" /></td>
                        <td><c:out value="${employee.phone}" /></td>
                        <td>
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />"
                        class="editButton">&#9999;&#65039;</a>
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />"
                        class="deleteButton">&#128465;&#65039;</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <script>
        function toggleMenu() {
            var menuContent = document.querySelector('.menu-content');
            menuContent.style.display = (menuContent.style.display === 'block') ? 'none' : 'block';
        }
    </script>
</body>
</html>