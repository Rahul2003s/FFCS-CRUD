<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM student_mark WHERE student_id="+id);
//response.sendRedirect(request.getContextPath() + "/index.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE>
<html>
    <body>
        <h3>Data Deleted Successfully!</h3>
        <a href="fac">Home</a>
    </body>
</html>