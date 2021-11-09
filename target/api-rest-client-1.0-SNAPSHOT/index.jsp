<%-- 
    Document   : index
    Created on : 01-nov-2021, 22:56:18
    Author     : jordi
--%>

<%@page import="com.area.api.rest.model.Student"%>
<%@page import="com.area.api.rest.client.NewJerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
         NewJerseyClient client = new NewJerseyClient();
         Student student = new Student();
         student.setName("Alberto");
         student.setSurname("Lobo");
         student.setEmail("alberto@gmail.com");
         Student studentInserted = client.create_JSON(student, Student.class);
         
         out.println("the student " + studentInserted.getName() + " is inserted");
        
        %>
    </body>
</html>
