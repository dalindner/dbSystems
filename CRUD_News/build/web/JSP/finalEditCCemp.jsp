<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.CCDataAccess"%>
<%@page import="dao.CCempDataAccess"%>
<%@page import="model.callcenter"%>
<%@page import="model.callcenteremp"%>
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

            
            int type1 = Integer.parseInt(request.getParameter("type1"));
            int WorkId = Integer.parseInt(request.getParameter("WorkId"));
            int Available = 1;
            int cc_emp_id = Integer.parseInt(request.getParameter("cc_emp_id"));

            
            CCempDataAccess da = new CCempDataAccess();
            da.editCCemp(type1,WorkId,Available,cc_emp_id);
            //response.sendRedirect("/DbSystems/index");
            
        %>
        
        <%= type1 %>
        <%= WorkId %>
        <%= Available %>
        <%= cc_emp_id %>
        

    </body>
</html>