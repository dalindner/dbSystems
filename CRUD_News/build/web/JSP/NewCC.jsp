<%-- 
    Document   : NewEvents
    Created on : March 24, 2016, 03:41:02 PM
    Author     : Zuoyuan Zhao
--%>

<%@page import="dao.CCDataAccess"%>
<%@page import="dao.CCempDataAccess"%>
<%@page import="model.callcenter"%>
<%@page import="model.Events"%>
<%@page import="dao.EventDataAccess"%>
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


        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
        <div style="margin-left: 35%;background: rgba(255,255,255,.4);border-radius: 25px;border: 2px solid #a1a1a1;padding: 50px; width: 25%">
            <h3>New Call center</h3>
            <form name="myForm" action="/DbSystems/JSP/AddCC.jsp"  method="post">
                
                

                <br>
                *Call Center Name: (any)<br>
                <input type="text" name="CCname" style="width: 100%" required><br>
                *Zip: <br>
                <input type="text" name="Zip" style="width: 100%" required><br>
                *Phone Number: <br>
                <input type="text" name="PhoneNum" style="width: 100%" required><br>
                *Address: <br>
                <input type="text" name="Address" style="width: 100%" required>
 
                <input type="text" name="Active" style="width: 100%;display:none" value="1" required><br>
                *Select Event:<br>
                
                <select id="type1" name="type1" style="width: 100%">
                            <c:forEach items="${AllEvents}" var="t">
                                <option value=${t.eventId}>${t.eventName}
                            </c:forEach>
                </select>
                <br>
                <br>

                <input type="submit" value="Submit">
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
