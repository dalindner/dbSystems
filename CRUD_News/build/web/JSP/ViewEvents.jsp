<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ViewRequests
    Created on : Mar 17, 2016, 7:16:28 PM
    Author     : Douglas
--%>



<%@page import="dao.EventDataAccess"%>
<%@page import="model.User"%>
<%@page import="model.Events"%>
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
            
            <% String events = ""; %>


            <c:forEach items="${AllEvents}" var="p">

                    <c:set var="events" value="${p.eventName}"/>
                    
                    <div style="margin-left: 25%;">
                    </div>
            </c:forEach>
            



            <div style="margin-left: 10%; margin-right: 10%">
                <h3>EVENTS</h3>
                <br>
                
            <div id="demo"><input class="search" type="search" data-column="all"> (Match any column)<br>

            <!-- targeted by the "filter_reset" option -->
            <button type="button" class="reset">Reset Search</button>

            <table class="tablesorter">
                    <thead>
                            <tr>
                                    <th>EventId</th>
                                    <th>EventName</th>
                                    <th>Zip</th>
                                    <th>event_type_fk</th>
                            </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${AllEvents}" var="q">
                            <tr>
                                <td>${q.eventId}</td>
                                <td>${q.eventName}</td>
                                <td>${q.zip}</td>
                                <td>${q.event_type_fk}</td>
                                <td><a href="/DbSystems/EventDelete?eventid=${q.eventId}">Delete</a></td>
                                <td><a href="/DbSystems/EventEdit?eventid=${q.eventId}">Modify</a></td>
                                
                            </tr>
                        </c:forEach>   
                    </tbody>
            </table></div>
                
                
                <!--Complete Interface Addnew.-->
            </div>


        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        <nav>
            
            <a href="#" class="nav-toggle-btn"></a>
            
            
            
        </nav>
        
        

    

    </body>
</html>










