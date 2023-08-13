<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>welcome bosa !!</h1>
	
	<c:forEach items="${customer}" var="cus">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="email" value="${cus.email}"/>	
	
	<h4>Customer ID : </h4> ${cus.id}
	<h4>Name : </h4> ${cus.name}
	<h4>Password : </h4> ${cus.password}
	<h4>Contact No : </h4> ${cus.phone}
	<h4>Email : </h4> ${cus.email}
	
	</c:forEach>
	
	<c:url value="update.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
	</c:url>
	<c:url value="delete.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<button>Update</button>
	</a>
	<a href="${cusdelete}">
	<button>delete</button>
	</a>
	
</body>
</html>