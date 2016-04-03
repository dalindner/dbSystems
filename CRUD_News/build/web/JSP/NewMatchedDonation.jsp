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
        <% 

            String item = request.getParameter("item");       
            String description = request.getParameter("description");  
            int category = Integer.parseInt(request.getParameter("category"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int requested_id_fk = Integer.parseInt(request.getParameter("requested_id_fk"));
            String donator_email_fk = request.getParameter("donator_email_fk");
            String requestor_email_fk = request.getParameter("requestor_email_fk");
            int quantityRequested = Integer.parseInt(request.getParameter("quantityRequested"));
            int item_id_fk = Integer.parseInt(request.getParameter("item_id_fk"));
            
            
            DataAccess da = new DataAccess();
            
            Donation n = new Donation(0, item, description, category, quantity);
            da.addNewDonation(n);
            
            request.setAttribute("index", DataAccess.getIndexOfDonation());
            
        %>
        
        <% String donationIndex = ""; %>

        <c:forEach items="${index}" var="p">

                <c:set var="donationIndex" value="${p.item_id}"/>
                <% donationIndex = pageContext.getAttribute("donationIndex").toString(); %>

        </c:forEach>
        
        <%

            Donation_link b = new Donation_link(0, Integer.parseInt(donationIndex), item_id_fk, donator_email_fk, requestor_email_fk);
            da.addNewDonationLink(b);
            
            
            int newQuantity = quantityRequested-quantity;
            
            da.editRequestedItemQuantity(item_id_fk, newQuantity);
            
            if(newQuantity == 0){
                da.editRequestedItemCompleted(item_id_fk, true);
            }
            
            
            response.sendRedirect("/DbSystems/index");
        %>
            
        <%= item %>
        <%= description %>
        <%= category %>
        <%= quantity%>
        <%= requested_id_fk%>
        <%= donator_email_fk%>
        <%= requestor_email_fk%>
        <h2><%=donationIndex%></h2>
        <%= quantityRequested%>
        <%= item_id_fk%>

                   

    </body>
</html>