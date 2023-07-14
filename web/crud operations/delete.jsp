<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("f_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ffcs_crud", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM faculty WHERE f_id="+f_id);
response.sendRedirect(request.getContextPath() + "/home.jsp");
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
<!--        <a href="fac">Home</a>-->
    </body>
</html>