<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ViewRequests
    Created on : Mar 17, 2016, 7:16:28 PM
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







<html>
<head>
	<meta charset="utf-8">
	<title>jQuery tablesorter 2.0 - Filter Widget External Search</title>

	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<!-- Demo stuff -->
	<link class="ui-theme" rel="stylesheet" href="css/jquery-ui.min.css">
	<link rel="stylesheet" href="css/jq.css">
	<link href="css/prettify.css" rel="stylesheet">
	<script src="js/prettify.js"></script>
	<script src="js/docs.js"></script>

	<!-- Tablesorter: required -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/abc/css/theme.blue.css">
	<script src="${pageContext.request.contextPath}/abc/js/jquery.tablesorter.js"></script>
	<script src="${pageContext.request.contextPath}/abc/js/widgets/widget-storage.js"></script>
	<script src="${pageContext.request.contextPath}/abc/js/widgets/widget-filter.js"></script>

	<script id="js">$(function() {
            
	var $table = $('table').tablesorter({
		theme: 'blue',
		widgets: ["zebra", "filter"],
		widgetOptions : {
			// filter_anyMatch replaced! Instead use the filter_external option
			// Set to use a jQuery selector (or jQuery object) pointing to the
			// external filter (column specific or any match)
			filter_external : '.search',
			// add a default type search to the first name column
			filter_defaultFilter: { 1 : '~{query}' },
			// include column filters
			filter_columnFilters: true,
			filter_placeholder: { search : 'Search...' },
			filter_saveFilters : true,
			filter_reset: '.reset'
		}
	});

	// make demo search buttons work
	$('button[data-column]').on('click', function(){
		var $this = $(this),
			totalColumns = $table[0].config.columns,
			col = $this.data('column'), // zero-based index or "all"
			filter = [];

		// text to add to filter
		filter[ col === 'all' ? totalColumns : col ] = $this.text();
		$table.trigger('search', [ filter ]);
		return false;
	});

});</script>
        

</head>
</html>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Side Nav</title>
        <style type="text/css">
            
            * {
                margin: 0;
                padding: 0;
            }
            
            body {
                font-family: Open Sans, Arial, sans-serif;
                overflow-x: hidden;
            }
            
            nav {
                position: fixed;
                z-index: 1000;
                top: 0;
                bottom: 0;
                width: 200px;
                background-color: #036;
                transform: translate3d(-200px, 0, 0);
                transition: transform 0.4s ease;
            }
            .active-nav nav {
                transform: translate3d(0, 0, 0);
            }
            nav ul {
                list-style: none;
                margin-top: 100px;
            }
            nav ul li a {
                text-decoration: none;
                display: block;
                text-align: center;
                color: #fff;
                padding: 10px 0;
            }
            
            .nav-toggle-btn {
                display: block;
                position: absolute;
                left: 200px;
                width: 40px;
                height: 40px;
                background-color: #666;
            }
            
            .content {
                padding-top: 100px;
                height: 2000px;
                background-color: #ccf;
                transition: transform 0.4s ease;
            }
            .active-nav .content {
                transform: translate3d(200px, 0, 0);
            }

            
        </style>
    </head>
    
    <body>
             
        <div class="content" >
            <body>

            <br>


            <% boolean loggedIn = false; %>
            <% String email = ""; %>


            <c:forEach items="${AllUser}" var="p">
                <c:if test="${p.loggedIn == 1}">
                    <% loggedIn = true; %>
                    <c:set var="email" value="${p.email}"/>
                    <% email = pageContext.getAttribute("email").toString(); %>
                    <div style="margin-left: 25%;">
                    </div>
                </c:if>
            </c:forEach>
            
            <c:set var="donationId" value="${donationId}"/>
            <% String donationId = (pageContext.getAttribute("donationId").toString()); %>
            <c:set var="requestId" value="${requestId}"/>
            <% String requestId = (pageContext.getAttribute("requestId").toString()); %>
            <c:set var="emailR" value="${emailR}"/>
            <% String emailR = pageContext.getAttribute("emailR").toString(); %>
            <c:set var="requestedName" value="${requestedName}"/>
            <% String requestedName = pageContext.getAttribute("requestedName").toString(); %>
            <c:set var="donatedName" value="${donatedName}"/>
            <% String donatedName = pageContext.getAttribute("donatedName").toString(); %>
            <c:set var="requestedQuantity" value="${requestedQuantity}"/>
            <% String requestedQuantity = pageContext.getAttribute("requestedQuantity").toString(); %>
            <c:set var="donatedQuantity" value="${donatedQuantity}"/>
            <% String donatedQuantity = pageContext.getAttribute("donatedQuantity").toString(); %>
        
            
            
            <p><%= donationId%></p>
            <p><%= requestId%></p>
            <p><%= emailR%></p>
            <p><%= requestedName%></p>
            <p><%= donatedName%></p>
            <p><%= requestedQuantity%></p>
            <p><%= donatedQuantity%></p>
            
            <%
                DataAccess da = new DataAccess();
        
                da.editDonation_link(Integer.parseInt(donationId), Integer.parseInt(requestId), emailR);
                
                if(requestedName.matches(donatedName)){
                    %>
                    <p>match</p>
                    <%
                    int newQuantity = Integer.parseInt(donatedQuantity)-Integer.parseInt(requestedQuantity);
                    if(newQuantity < 0){
                        newQuantity = 0;
                    }
                    
                    da.editRequestedItemQuantity(Integer.parseInt(requestId), newQuantity);

                    if(newQuantity == 0){
                        da.editRequestedItemCompleted(Integer.parseInt(requestId), true);
                    }
                    
                    
                }

                response.sendRedirect("/DbSystems/index");
                %>
                
                
                
                
            

            

                <!--Complete Interface Addnew.-->


        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        <nav>
            
            <a href="#" class="nav-toggle-btn"></a>
            
            <ul>
                <li><a href="/DbSystems/index">Home</a></li>
                
                <%
                    if(loggedIn){ 
                %>
                        <% email = pageContext.getAttribute("email").toString(); %>
                        <li><a href="/DbSystems/LogOut?email=<%=email%>">Log Out</a><li>
                <%
                    }
                    else{
                %>
                        <li><a href="/DbSystems/LogIn.html">Log In</a></li>
                        <li><a href="/DbSystems/JSP/SignUp.jsp">Sign Up</a></li>
                <%
                    }
                %>
            </ul>
            
        </nav>
        
        

    <script type="text/javascript">
        
        (function() {
            
            var bodyEl = $('body'),
                navToggleBtn = bodyEl.find('.nav-toggle-btn');
            
            navToggleBtn.on('click', function(e) {
                bodyEl.toggleClass('active-nav');
                e.preventDefault();
            });
            
            
            
        })();
        
        
    </script>

    </body>
</html>



















