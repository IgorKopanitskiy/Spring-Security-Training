<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11.03.2026
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>INFORMATION FOR ALL EMPLOYEES</title>
</head>
<body>
<h3>INFORMATION FOR ALL EMPLOYEES</h3>
<br>
<br>
<security:authorize access="hasRole('HR')">
<input type="button" value="Salary" onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>
<br>
<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Performance" onclick="window.location.href = 'manager_info'">
Only for Managers
</security:authorize>


</body>
</html>
