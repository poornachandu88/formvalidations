<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title}</title>
</head>
<body>

	<h2>Spring3MVC with Hibernate3 CRUD Example using Annotations</h2>
	<h2>
		1. <a href="${contextPath}/regform">New Employee Registration</a>
	</h2>
	<h2>
		2. <a href="${contextPath}/listofemp">List Of Employees</a>
	</h2>



	<c:if test="${UserClickForm==true}">

		<%@include file="regform.jsp"%>

	</c:if>


	<c:if test="${UserClickEmployeeList==true}">

		<%@include file="emplist.jsp"%>

	</c:if>



</body>
</html>