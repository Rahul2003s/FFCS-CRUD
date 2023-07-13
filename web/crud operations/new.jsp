<%-- 
    Document   : new
    Created on : 01-Feb-2023, 5:11:52 PM
    Author     : sakthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <form action="crud" method="post">
            <label for="id">Student Id:</label>
            <input name="id" type="number"><br>
            <label for="name">Student Name:</label>
            <input name="name" type="text"><br>
            <label for="cat">Cat Marks:</label>
            <input name="cat" type="number"><br>
            <label for="da">DA Marks:</label>
            <input name="da" type="number"><br>
            <label for="fat">FAT Marks:</label>
            <input name="fat" type="number"><br>
            <label for="tot">Total:</label>
            <input name="tot" type="number"><br>
            <input type="submit">
        </form>
    </body>
</html>