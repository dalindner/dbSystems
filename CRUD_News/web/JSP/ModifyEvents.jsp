<%-- 
    Document   : NewEvents
    Created on : March 24, 2016, 03:41:02 PM
    Author     : Zuoyuan Zhao
--%>

<%@page import="dao.EventDataAccess"%>
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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Modifying</title>
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

        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <h1>New Event</h1>
        </div>
        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <form name="myForm" action="/DbSystems/JSP/finalEdit.jsp"  method="post">
                
                *Select Event Type:<br>
                
                
                
                <c:forEach items="${TheEvent}" var="t">
                <select id="type1" name="type1" value =${t.event_type_fk}>
                            <c:forEach items="${AllEvents}" var="p">
                                <option value=${p.event_type_fk}>${p.event_type_fk}
                            
                            </c:forEach>
                </select>

                <br><br>
                *EventName: (any)<br>
                <input type="text" name="EventName" value = ${t.eventName} style="width: 200px" required><br>
                *Zip: <br>
                <input type="text" name="Zip" value = ${t.zip} style="width: 200px" required><br>
                <br>
                <input type="text" name="eventid" value = ${t.eventId} style="width:200px;display:none" required><br>
                <input type="submit" value="Submit">
                </c:forEach>
            </form>
            <!--Complete Interface Addnew.-->
        </div>
        
        
                

        
    
   
        </div>

        
      
        
        
        
        
        <nav>
            
            <a href="#" class="nav-toggle-btn"></a>
            
            <ul>
                <li><a href="/DbSystems/index">Home</a></li>
                <li><a href="/DbSystems/LogIn.html">Log In</a></li>
            </ul>
            
        </nav>
        
        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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
