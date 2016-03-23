<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
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
            <div style="width: 900px; margin-left: 40%; margin-right: auto">

            <% boolean loggedIn = false; %>
            <% String emaily = ""; %>

            <c:forEach items="${AllUser}" var="p">
                <c:if test="${p.loggedIn == 1}">
                    <% loggedIn = true; %>
                    <c:set var="emaily" value="${p.email}"/>
                    <div style="margin-left: 25%;">
                    </div>
                </c:if>
            </c:forEach>


            <% 

            String name = request.getParameter("name");  
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String zip = request.getParameter("zip");
            String phone = request.getParameter("phone");
            String phoneBackup = request.getParameter("phoneBackup");
            String email = request.getParameter("email");
            String emailBackup = request.getParameter("emailBackup");
            String password = request.getParameter("password");
            password = model.Password.encrypt(password);
            
            int workId = -1;
            String value = request.getParameter("workId");
            if(value.length() != 0){
                if(value.matches("^-?\\d+$")){
                    workId = Integer.parseInt(request.getParameter("workId"));
                }
                
            }
            

            
            
        %>
        
            <h1>Account Creation Aborted</h1>
            <h3>Please Enter Unique Credentials:</h3>
        
            <% boolean matchEmail = false; %>
            <% boolean matchWorkId = false; %>

            <c:forEach items="${AllUser}" var="p">
                <c:set var="email" value="<%=email%>"/>
                <c:set var="workId" value="<%=workId%>"/>
                <c:if test="${email == p.email}">
                    <% matchEmail = true; %>
                </c:if>
                <c:if test="${workId == p.workId}">
                    <% matchWorkId = true; %>
                </c:if>
            </c:forEach>
    
            <% 
                String message = ""; 
                
                if(matchEmail == true){
                    message = message + "Email entered is taken"; 
                    %>
                    <p>Input Email is taken</p>
                    <%  
                }
                if(matchWorkId == true){
                    if(workId != -1){
                        message = message + "Work ID entered is taken";  
                        %>
                        <p>Input Work ID is taken</p>
                        <%  
                    }
                }
                if(message.length() != 0){
                    //response.sendRedirect("/DbSystems/nope");
                    %>
                   
                    <%
                }
                else{
                    User n = new User(0, name, workId, dob, gender, address, zip, phone, phoneBackup, email, emailBackup, password,1);
                    DataAccess da = new DataAccess();
                    da.addNewUser(n);
                    response.sendRedirect("/DbSystems/index");
                }
            %>


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