<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    
</head>
<body>
    <form action="updateEmployee.jsp" method="post">
        <label for="id">Employee ID:</label>
        <input type="text" id="id" name="id"><br><br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="salary"><br><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
