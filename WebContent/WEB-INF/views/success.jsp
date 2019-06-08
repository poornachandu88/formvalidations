<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.even {
	background-color: silver;
}
</style>
<title>${title}</title>
</head>
<body>



${success}

<table cellpadding="5">
		<tr class="even">
			<th>Employee Name</th>
			<th>Employee Id</th>
			<th>Employee DOB</th>
			<th>Employee Qualification</th>
			<th>Employee Salary</th>
			<th>Employee Address</th>
		</tr>
			<c:forEach items="${listusers}" var="listemp">
			<tr>
				<td>${listemp.employee_Name}</td>
				<td>${listemp.employee_Id}</td>
				<td>${listemp.dob}</td>
				<td>${listemp.qualification}</td>
				<td>${listemp.salary}</td>
				<td>${listemp.Address}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

