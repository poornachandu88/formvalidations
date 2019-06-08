<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>${title}</title>
	</head>
	<body>
		<h2>Add Employee Data</h2>
	
	
	<form action="${contextPath}/formsubmit" method="get">

		<table>
			<tr>
				<td>Employee Name:</td>
				<td><input type="text" name="empname"></td>
			</tr>
			<tr>
				<td>Employee Id :</td>
				<td><input type="text" name="empid"></td>
			</tr>
			<tr>
				<td>Employee D.O.B:</td>
				<td><input type="text" name="empdob"></td>
			</tr>
			<tr>
				<td>Employee Qualification :</td>
				<td><select name="empqualification" size="3">
						<option value="btech">B.Tech</option>
						<option value="bsc">B.Sc</option>
						<option value="mca">M.C.A</option>
						<option value="mtech">M.Tech</option>
				</select></td>
			</tr>
			<tr>
				<td>Employee SALARY :</td>
				<td><input type="text" name="empsalary"></td>
			</tr>
			<tr>
				<td>Employee ADDRESS :</td>
				<td><input type="text" name="empaddress"></td>
			</tr>


			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>

		
  <c:if test="${!empty employees}">
		<h2>List Employees</h2>
	<table align="left" border="1">
		<tr>
			<th>Employee Name</th>
			<th>Employee DOB</th>
			<th>Employee Qualification</th>
			<th>Employee Salary</th>
			<th>Employee Address</th>
		</tr>

		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${listemp.employee_Name}</td>
				<td>${listemp.dob}</td>
				<td>${listemp.qualification}</td>
				<td>${listemp.salary}</td>
				<td>${listemp.Address}</td>
				<td align="center"><a href="edit.html?id=${listemp.employee_Id}">Edit</a> | <a href="delete.html?id=${listemp.employee_Id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>