<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 

            String name = request.getParameter("name");  
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String zip = request.getParameter("zip");
            String phone = request.getParameter("phone");
            String phoneBackup = request.getParameter("phoneBackup");
            String email = request.getParameter("email");
            String emailBackup = request.getParameter("emailBackup");
            String password = request.getParameter("password");
            password = model.Password.encrypt(password);
            
            int workId = -1;
            String value = request.getParameter("workId");
            if(value.length() != 0){
                if(value.matches("^-?\\d+$")){
                    workId = Integer.parseInt(request.getParameter("workId"));
                }
                
            }
            

            
            
        %>
        
            <h1>Account Creation Aborted</h1>
            <h3>Please Enter Unique Credentials:</h3>
        
            <% boolean matchEmail = false; %>
            <% boolean matchWorkId = false; %>

            <c:forEach items="${AllUser}" var="p">
                <c:set var="email" value="<%=email%>"/>
                <c:set var="workId" value="<%=workId%>"/>
                <c:if test="${email == p.email}">
                    <% matchEmail = true; %>
                </c:if>
                <c:if test="${workId == p.workId}">
                    <% matchWorkId = true; %>
                </c:if>
            </c:forEach>
    
            <% 
                String message = ""; 
                
                if(matchEmail == true){
                    message = message + "Email entered is taken"; 
                    %>
                    <p>Input Email is taken</p>
                    <%  
                }
                if(matchWorkId == true){
                    if(workId != -1){
                        message = message + "Work ID entered is taken";  
                        %>
                        <p>Input Work ID is taken</p>
                        <%  
                    }
                }
                if(message.length() != 0){
                    //response.sendRedirect("/DbSystems/nope");
                    %>
                    <a href="index">Index</a>
                    <%
                }
                else{
                    User n = new User(0, name, workId, dob, gender, address, zip, phone, phoneBackup, email, emailBackup, password,1);
                    DataAccess da = new DataAccess();
                    da.addNewUser(n);
                    response.sendRedirect("/DbSystems/index");
                }
            %>
                    

    </body>
</html>