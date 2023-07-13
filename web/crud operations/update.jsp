<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.http.*"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mysql";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from student_mark where student_id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form action="update-process.jsp" method="post">
    <input type="number" name="id" value="<%=resultSet.getString("student_id")%>">
    <br>
    Student name:<br>
    <input type="text" name="name" value="<%=resultSet.getString("student_name") %>">
    <br>
    CAT marks:<br>
    <input type="number" name="cat" value="<%=resultSet.getString("Cat_marks") %>">
    <br>
    DA marks:<br>
    <input type="number" name="da" value="<%=resultSet.getString("DA_marks") %>">
    <br>
    FAT marks:<br>
    <input type="number" name="fat" value="<%=resultSet.getString("Fat_marks") %>">
    <br>
    Total marks:<br>
    <input type="number" name="tot" value="<%=resultSet.getString("Total")%>">
    
    <input type="submit" value="submit">
</form>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>