<%-- 
    Document   : course
    Created on : 05-Mar-2023, 5:43:35 pm
    Author     : sakthivelan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course List</title>
    <link rel="stylesheet" type="text/css" media="all" href="../CSS/admin_course.css">
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
		<label for="name">Course Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter the course name..">

		<input type="submit" value="Search">
	</form>

	<table>
		<tr>
			<th>Course Code</th>
			<th>Course Name</th>
			<th>Department</th>
			<th>Credit Hours</th>
		</tr>
		<tr>
			<td>CSC101</td>
			<td>Introduction to Computer Science</td>
			<td>Computer Science</td>
			<td>3</td>
		</tr>
		<tr>
			<td>MAT201</td>
			<td>Calculus II</td>
			<td>Mathematics</td>
			<td>4</td>
		</tr>
		<tr>
			<td>ENG102</td>
			<td>Academic Writing and Research</td>
			<td>English</td>
			<td>3</td>
		</tr>
	</table>
</body>
</html>
