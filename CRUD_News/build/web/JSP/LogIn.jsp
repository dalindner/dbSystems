<%-- 
    Document   : LogIn
    Created on : Mar 1, 2016, 12:23:45 AM
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
        <h1>Hello World!</h1>
            <%

                String email = request.getParameter("email");  
                String password = request.getParameter("password");
                password = model.Password.encrypt(password);
                Object test = request.getAttribute("AllUser");
                
            %>
        
            <%= test %>
            <table cellpadding="10">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
                <c:forEach items="${AllUser}" var="p">
                    <c:set var="email" value="<%=email%>"/>
                    <c:set var="password" value="<%=password%>"/>
                    
                    <c:if test="${email == p.email}">
                        <c:if test="${password == p.password}">
                            <c:out value="${email} and ${password} logging in"/>
                            <%
                                DataAccess da = new DataAccess();
                                da.editUserSession(email, 1);
                            %>
                        </c:if>
                    </c:if>
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.email}</td>
                    </tr>
                </c:forEach>
            </table>
            <%response.sendRedirect("index");%>
    </body>
</html>
