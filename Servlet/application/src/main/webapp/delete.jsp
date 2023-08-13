<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
	%>
	
	<form action="deletea" method="post">
		<label for="cid">Customer ID</label><br>
		<input type="text" name="cid" value="<%= id%>" readonly><br><br>
		<label for="name">Name</label><br>
		<input type="text" name="name" value="<%= name%>"readonly><br><br>
		<label for="password">Password</label><br>
		<input type="password" name="password" value="<%= password%>"readonly><br><br>
		<label for="phone">Phone</label><br>
		<input type="text" name="phone" value="<%= phone%>"readonly><br><br>
		<label for="email">Email</label><br>
		<input type="email" name="email" value="<%= email%>" readonly><br><br>
		<input type="submit" name="submit" value="Update">
  	</form>
</body>
</html>