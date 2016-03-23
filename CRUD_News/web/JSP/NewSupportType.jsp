<%-- 
    Document   : NewSupportType
    Created on : Mar 18, 2016, 10:08:47 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
<%@page import="model.Event_requests"%>
<%@page import="model.Items_of_request"%>
<%@page import="model.Requested_items_link"%>
<%@page import="model.Requests_for_help"%>
<%@page import="model.Type_of_support"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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

           
            String typeOfSupport = request.getParameter("typeOfSupport");

            Type_of_support n = new Type_of_support(1,typeOfSupport);

            DataAccess da = new DataAccess();
            da.addNewTypeOfSupport(n);

            response.sendRedirect("/DbSystems/index");
            
            
            %>
    </body>
</html>
