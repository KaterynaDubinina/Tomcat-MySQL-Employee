<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
            font-size: 20px;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 10px;
        }
        .back-button {
            background-color: inherit;
            border: none;
            color: white;
            padding: 0px;
            text-align: left;
            text-decoration: none;
            font-size: 20px;
            cursor: pointer;
        }
        table {
            border-collapse: collapse;
            width: 460px;
            margin: auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
            color: white;
        }
        h1 {
            font-size: 20px;
            padding: 860px;
            text-align: center;
            color: white;
            margin: 0;
        }
        caption {
            font-size: 30px;
            color: white;
        }
        .saveButton, .cancelButton {
            background-color: #545454;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 15px;
            width: 100px;
            float: right;
        }
        .saveButton:hover  {
            background-color: #009712;
            color: white;
        }
        .cancelButton:hover {
            background-color: #d90000;
            color: white;
        }
    </style>
    <script>
        function goBack() {
            window.location.href = '<%=request.getContextPath()%>/employees_app';
        }
    </script>
</head>
<body>
    <div class="header">
        <div class="back-button" onclick="goBack()">←</div>
        <h1>&#9642;&#65039; Employees &#9642;&#65039;</h1>
    </div>
    <div align="center">
        <c:if test="${employee != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${employee == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h3>
                    <c:if test="${employee != null}">
                        Edit Employee
                    </c:if>
                    <c:if test="${employee == null}">
                        Add New Employee
                    </c:if>
                </h3>
            </caption>
            <c:if test="${employee != null}">
                <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
            </c:if>
            <tr>
                <th>Name </th>
                <td>
                    <input type="text" name="name" size="45" value="<c:out value='${employee.name}' />" />
                </td>
            </tr>
            <tr>
                <th>Position </th>
                <td>
                    <input type="text" name="position" size="45" value="<c:out value='${employee.position}' />" />
                </td>
            </tr>
            <tr>
                <th>Phone </th>
                <td>
                    <input type="text" name="phone" size="45" value="<c:out value='${employee.phone}' />" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" value="Cancel" class="cancelButton" onclick="goBack()" />
                    <input type="submit" value="Save" class="saveButton" />
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>