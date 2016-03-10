<%-- 
    Document   : index
    Created on : Mar 1, 2016, 8:54:08 AM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
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
        <body>
        
        <br>
        
        
                <% boolean loggedIn = false; %>
                <% String email = ""; %>
        
                <c:forEach items="${AllUser}" var="p">
                    <c:if test="${p.loggedIn == 1}">
                        <% loggedIn = true; %>
                        <c:set var="email" value="${p.email}"/>
                        <div style="margin-left: 25%;">
                            <h1>Logged In, Welcome: ${p.name} - ${p.email}</h1>
                        </div>
                    </c:if>
                </c:forEach>

                <%
                    if(loggedIn){ %>
                        <% email = pageContext.getAttribute("email").toString(); %>
                <%
                    }
                    else{ %>
                    <div style="margin-left: 25%;">
                        <h1>Welcome, You Must Log In or Create An Account</h1>
                    </div>
                    <br>
                    <br>
                    <br>
                    
                        <div style="width: 900px; margin-left: 40%; margin-right: auto">
                            <h3>Log In</h3>
                            <br>
                            <form name="myForm" action="LogIn" method="post">
                                Email:<br>
                                <input type="email" name="email" style="width: 200px" required><br>
                                Password:<br>
                                <input type="password" name="password" style="width: 200px" required><br>

                                <input type="submit" value="Submit">
                            </form>
                            <!--Complete Interface Addnew.-->
                        </div>
                    <br>
                    <br>
                        <div style="width: 900px; margin-left: 40%; margin-right: auto">
                            <h3>Sign Up</h3>
                            <br>
                            <form name="myForm" action="JSP/SignUp.jsp" method="post">
                                <input type="submit" value="Sign Up">
                            </form>
                        </div>
                    <%
                    }
                    
                %>
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