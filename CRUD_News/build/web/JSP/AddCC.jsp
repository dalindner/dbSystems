<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="dao.CCDataAccess"%>
<%@page import="model.User"%>
<%@page import="model.callcenter"%>
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

            String CCname = request.getParameter("CCname");  
            String Zip = request.getParameter("Zip");
            String PhoneNum = request.getParameter("PhoneNum");
            String Address = request.getParameter("Address");
            int Active = Integer.parseInt(request.getParameter("Active"));
            int event = Integer.parseInt(request.getParameter("type1"));
            callcenter n = new callcenter(0,CCname,Zip,PhoneNum,Address,1,event);
            CCDataAccess da = new CCDataAccess();
            da.addCC(n);
            //response.sendRedirect("/DbSystems/index");
            
        %>
        <%= CCname %>
        <%= Zip %>
        <%= PhoneNum %>
        <%= event %>
        

    </body>
</html>