<%-- 
    Document   : update-process
    Created on : 01-Feb-2023, 8:22:38 PM
    Author     : sakthi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mysql";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String cat= request.getParameter("cat");
String da= request.getParameter("da");
String fat= request.getParameter("fat");
String tot= request.getParameter("tot");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update student_mark set student_id=?,student_name=?,Cat_marks=?,DA_marks=?,Fat_marks=?,Total=? where student_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, cat);
ps.setString(4, da);
ps.setString(5, fat);
ps.setString(6, tot);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect(request.getContextPath() + "/index.jsp");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>