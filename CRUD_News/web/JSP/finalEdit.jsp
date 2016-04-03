<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="dao.EventDataAccess"%>
<%@page import="model.User"%>
<%@page import="model.Events"%>
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

            String EventName = request.getParameter("EventName");  
            String Zip = request.getParameter("Zip");
            int type1 = Integer.parseInt(request.getParameter("type1"));
            int eventid = Integer.parseInt(request.getParameter("eventid"));
            

            
            EventDataAccess da = new EventDataAccess();
            da.editEvent(eventid,EventName,Zip,type1);
            //response.sendRedirect("/DbSystems/index");
            
        %>
        
        <%= EventName %>
        <%= Zip %>
        <%= type1 %>
        <%= eventid %>
        

    </body>
</html>