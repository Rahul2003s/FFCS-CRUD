<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" media="all" href="../CSS/admin_home.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"> 
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <header>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="faculty.jsp">Faculties</a></li>
                    <li><a href="course.jsp">Courses</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <h1>Add Faculty Details</h1>
            <form>
                <label for="fid">Faculty Id:</label>
                <input type="text" id="fid" name="fid" required>    
                <label for="fname">Name:</label>
                <input type="text" id="fname" name="fname" required>
                <label for="cid">Course Code:</label>
                <input type="text" id="cid" name="cid" required>
                <label for="cname">Course Name:</label>
                <input type="text" id="cname" name="cname" required>
                <label for="slot">Slot No:</label>
                <select id="slot" name="slot" required>
                    <option value="" disabled selected>Select Slot</option>
                    <option value="A1+TA1">A1+TA1</option>
                    <option value="A2+TA2">A2+TA2</option>
                    <option value="B1+TB1">B1+TB1</option>
                    <option value="B2+TB2">B2+TB2</option>
                    <option value="C1+TC1">C1+TC1</option>
                    <option value="C2+TC2">C2+TC2</option>
                    <option value="D1+TD1">D1+TD1</option>
                    <option value="D2+TD2">D2+TD2</option>
                    <option value="E1+TE1">E1+TE1</option>
                    <option value="E2+TE2">E2+TE2</option>
                    <option value="F1+TF1">F1+TF1</option>
                    <option value="F2+TF2">F2+TF2</option>
                    <option value="G1+TG1">G1+TG1</option>
                    <option value="G2+TG2">G2+TG2</option>
                </select>
                <button type="submit" class="button-primary">Submit</button>
            </form>
            <hr>
            <h2>Faculty List</h2>
            <table>
                <thead>
                    <tr>
                        <th>Student Id</th>
                        <th>Student name</th>
                        <th>Student REg</th>
                        <th>Student dept</th>
                        <th>credits</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <%
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");  
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ffcs_crud","root","");  
                        Statement stmt = con.createStatement();
                        ResultSet resultSet = stmt.executeQuery("select * from student");
                        while(resultSet.next()){
                %>
                <tbody>
                    <tr>
                        <td><%=resultSet.getString("s_id")%></td>
                        <td><%=resultSet.getString("s_name")%></td>
                        <td><%=resultSet.getString("s_regno")%></td>
                        <td><%=resultSet.getString("s_dept")%></td>
                        <td><%=resultSet.getString("s_credits")%></td>
                        <td>
                            <a href="#">Edit</a>
                            <a href="#">Delete</a>
                        </td>
                    </tr>
                </tbody>
                <% 
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        </main>
    </body>

</html>
