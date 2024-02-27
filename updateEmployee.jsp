<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Result</title>
</head>
<body>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/employee"
        user="root" password="Binchow1428" />
    
    <sql:update dataSource="${dataSource}">
        UPDATE employees SET name=?, salary=? WHERE id=?
        <sql:param value="${param.name}" />
        <sql:param value="${param.salary}" />
        <sql:param value="${param.id}" />
    </sql:update>
    
    <p>Update successful.</p>
    <p><a href="Index.jsp">View Employee List</a></p>
</body>
</html>
