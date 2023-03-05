<%-- 
    Document   : faculty
    Created on : 05-Mar-2023, 5:43:21 pm
    Author     : sakthivelan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty</title>
    <link rel="stylesheet" type="text/css" media="all" href="../CSS/admin_faculty.css"> 
</head>
<body>
    <header>
        <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="faculty.jsp">Faculties</a></li>
                    <li><a href="course.jsp">Courses</a></li>
                </ul>
        </nav>
    </header>
    <form>
		<label for="name">Faculty Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter the faculty name..">

		<input type="submit" value="Search">
	</form>

	<table>
		<tr>
			<th>Name</th>
			<th>Department</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>
		<tr>
			<td>John Doe</td>
			<td>Computer Science</td>
			<td>johndoe@university.edu</td>
			<td>555-1234</td>
		</tr>
		<tr>
			<td>Jane Smith</td>
			<td>English</td>
			<td>janesmith@university.edu</td>
			<td>555-5678</td>
		</tr>
		<tr>
			<td>Bob Johnson</td>
			<td>History</td>
			<td>johnsonbob@university.edu</td>
			<td>555-9012</td>
		</tr>
	</table>
</body>
</html>
