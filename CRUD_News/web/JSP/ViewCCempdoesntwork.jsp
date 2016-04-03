<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ViewRequests
    Created on : Mar 17, 2016, 7:16:28 PM
    Author     : Douglas
--%>

<%@page import="dao.CCempDataAccess"%>
<%@page import="dao.CCDataAccess"%>
<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
<%@page import="model.callcenteremp"%>
<%@page import="model.callcenter"%>
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
			totalColumns = $ table [0] .config.columns,
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



            
            
            


            <div style="margin-left: 10%; margin-right: 10%">
                <h3>Requests</h3>
                <br>
                
            <div id="demo"><input class="search" type="search" data-column="all"> (Match any column)<br>

            <!-- targeted by the "filter_reset" option -->
            <button type="button" class="reset">Reset Search</button>

            <table class="tablesorter">
                    <thead>
                            <tr>
                                    <th>Call Center</th>
                                    <th>User Name</th>
                                    <th>Available or Not</th>
                                
                            </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${AllCCemp}" var="q">
                            <c:forEach items="${AllCC}" var="p">
                                <c:forEach items="${AllUser}" var="t">
                            <c:if test="${q.cc_id == p.cc_id}">
                                <c:if test="${q.id_fk == t.id}">
                            <tr>
                                <td>${p.cc_name}</td>
                                <td>${t.name}</td>
                                <c:if test="${q.available == 1}">
                                <td>Not Available</td>
                                </c:if>
                                <c:if test="${q.available == 0}">
                                <td>YES</td>
                                </c:if>
                                
                                <td><a href="/DbSystems/CCempEdit?cc_emp_id=${q.cc_emp_id}">Modify</a></td>
                                
                            </tr>
                                </c:if>>
                            </c:if>
                                </c:forEach>>
                            </c:forEach>
                        </c:forEach>   
                    </tbody>
            </table></div>
                
                
                <!--Complete Interface Addnew.-->
            </div>


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
