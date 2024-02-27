<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/employee"
        user="root" password="Binchow1428" />
    
    <sql:query var="result" dataSource="${dataSource}">
        SELECT * FROM employees;
    </sql:query>
    
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.name}" /></td>
                <td><c:out value="${row.salary}" /></td>
            </tr>
        </c:forEach>
    </table>

    <!-- Debugging output -->
    <p>Debug: SQL query executed successfully.</p>
    <c:if test="${empty result.rows}">
        <p>Debug: No data retrieved from the database.</p>
    </c:if>
</body>
</html>
