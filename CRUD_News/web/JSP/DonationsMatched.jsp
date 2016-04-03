
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="dao.DataAccess"%>
<%@page import="model.Donation"%>
<%@page import="model.User"%>
<%@page import="model.Type_of_support"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            
            
            


        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <h1>Make A Donation</h1>
        </div>
        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
        
                <% boolean loggedIn = false; %>
                <% String email = ""; %>
        
                <c:forEach items="${AllUser}" var="p">
                    <c:if test="${p.loggedIn == 1}">
                        <% loggedIn = true; %>
                        <c:set var="email" value="${p.email}"/>
                        <% email = pageContext.getAttribute("email").toString(); %>
                    </c:if>
                </c:forEach>
        
        
        <c:forEach items="${Data}" var="p">
        
        
        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <form name="myForm" action="/DbSystems/JSP/NewMatchedDonation.jsp" method="post">
               
                *Item Name: (any)<br>
                <input type="text" name="item_name" style="width: 200px" required value = "${p.requestedItem}" disabled><br><br>
                
                *Donation Description: (any)<br>
                <input type="text" name="description" style="width: 200px" required  ><br><br>
       
                
                *Select Donation Category:<br>
                <input type="text" name="categoryName" style="width: 200px" required value = "${p.item_category}" disabled><br><br>
                
                *Quantity: <br>
                <input type="number" name="quantity" style="width: 200px" required min="1" max="${p.quantity}" value=1><br><br>
                
                <input type="number" name="quantityRequested" style="width: 200px;display:none" value=${p.quantity}>
                <input type="number" name="item_id_fk" style="width: 200px;display:none" value=${p.item_id_fk}>
                <input type="text" name="item" style="width: 200px;display:none" value="${p.requestedItem}" >
                <input type="number" name="category" style="width: 200px;display:none" value=${p.supportType_id_fk}>
                <input type="text" name="requested_id_fk" style="width: 200px;display:none" value="${p.requests_id_fk}" >
                <input type="text" name="donator_email_fk" style="width: 200px;display:none" value="<%=email%>">
                <input type="text" name="requestor_email_fk" style="width: 200px;display:none" value="${p.email}">

                
                
                <input type="submit" value="Submit">
            </form>
            <!--Complete Interface Addnew.-->
        </div>
        
        </c:forEach>
                

        
    <script>

    
        function validateForm() {
            var message = "";
            var x = document.forms["myForm"]["item_name"].value;
            if(x.search(/[a-zA-Z]/) == -1) {
                message = message + "Item name is invalid. Please re-enter using letters.\n";
            }
            
            var message = "";
            var x = document.forms["myForm"]["description"].value;
            if(x.search(/[a-zA-Z]/) == -1) {
                message = message + "Description invalid. Please re-enter using letters.\n";
            }
 
            /*var x = document.forms["myForm"]["dob"].value;
            if (isNaN(x)) {
                message = message + "Age must be a number\n";
            }  
            if (x > 110) {
                message = message + "Age entered is invalid. Please re-enter.\n";

            }
        
            var x = document.forms["myForm"]["address"].value;
            if (x.search(/[0-9]/) == -1) {
                message = message + "The address must include a house/building number.\n";
            }  
            if (x.search(/[a-zA-Z]/) == -1) {
                message = message + "The address must include a street name.\n";
            }
            
            var x = document.forms["myForm"]["zip"].value;
            if (isNaN(x)) {
                message = message + "Invalid zip code. Zip codes must be 5 digits.\n";
            }  
            if (x.length < 5) {
                message = message + "Zip code is too short, it must be 5 digits.\n";
            }  
            if (x.length > 5) {
                message = message + "Zip code is too long, it must be 5 digits.\n";
            }
            
            var x = document.forms["myForm"]["phone"].value;
            if (isNaN(x)) {
                message = message + "Phone number is invalid. Please re-enter using digits.\n";
            } 
            if (x.length != 10) {
                message = message + "Phone number should be 10 digits.\n";
            } 
            
            var x = document.forms["myForm"]["phoneBackup"].value;
            if(x.length != 0){
                if (isNaN(x)) {
                    message = message + "Phone number backup is invalid. Please re-enter using digits.\n";
                } 
                if (x.length != 10) {
                    message = message + "Phone number backup should be 10 digits.\n";
                } 
            }

            var x = document.forms["myForm"]["password"].value;
            if (x.length < 8) {

                message = message + "password is too short, it must be at least 8 characters\n";
            }  
            if (x.length > 50) {
                message = message + "password is too long\n";;
            }  
            if (x.search(/\d/) == -1) {
                message = message + "invalid password. Please include a number\n";
            }  
            if (x.search(/[a-z]/) == -1) {
                message = message + "Invalid password. Please include a lower case letter\n";
            }   
            if (x.search(/[A-Z]/) == -1) {
                message = message + "Invalid password. Please include an upper case letter\n";
            }  
            if (x.search(/[!$%^&*()_+|~=`{}:/;<>?,.@#]/) == -1) {
                message = message + "Invalid password. Please include a special character\n";
            }
                
            var y = document.forms["myForm"]["passwordConfirmation"].value;
            if (x != y) {
                message = message + "password must match password confirmation\n";
            }*/ 

            if(message != ""){
                alert(message);
                return false;
            }
                
                
                
            }
            

        
        


    </script>

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
