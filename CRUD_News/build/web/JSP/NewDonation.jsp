<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.Donation"%>
<%@page import="model.Donation_link"%>
<%@page import="model.User"%>
<%@page import="model.Type_of_support"%>
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
        
        <% boolean loggedIn = false; %>
        <% String email = ""; %>

        <c:forEach items="${AllUser}" var="p">
            <c:if test="${p.loggedIn == 1}">
                <% loggedIn = true; %>
                <c:set var="email" value="${p.email}"/>
                <% email = pageContext.getAttribute("email").toString(); %>
            </c:if>
        </c:forEach>
        
        
        <% 
            String item_name = request.getParameter("name");       
            String description = request.getParameter("description");  
            int category = Integer.parseInt(request.getParameter("category"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            
            Donation n = new Donation(0, item_name, description, category, quantity);
            DataAccess da = new DataAccess();
            da.addNewDonation(n);
            
            request.setAttribute("index", DataAccess.getIndexOfDonation());
            
        %>
        
        <% String donationIndex = ""; %>

        <c:forEach items="${index}" var="p">

                <c:set var="donationIndex" value="${p.item_id}"/>
                <% donationIndex = pageContext.getAttribute("donationIndex").toString(); %>

        </c:forEach>
        
        <%

            Donation_link b = new Donation_link(0, Integer.parseInt(donationIndex), 0, email, "");
            da.addNewDonationLink(b);
            
            response.sendRedirect("/DbSystems/index");
        %>
            
        <%= n.getItem_name() %>
        <%= n.getDescription() %>
        <%= n.getCategory() %>
        <%= n.getQuantity()%>

                   

    </body>
</html>