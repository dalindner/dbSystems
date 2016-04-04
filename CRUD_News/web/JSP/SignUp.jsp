
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
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


        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
        <div style="margin-left: 35%;background: rgba(255,255,255,.4);border-radius: 25px;border: 2px solid #a1a1a1;padding: 50px; width: 25%">
            <h1>Sign Up</h1>
            <br>
            <form name="myForm" action="/DbSystems/NewUser" onsubmit="return validateForm()" method="post">
                
                *Select Account Type:<br>
                
                <select id="mySelect" style="width: 100%" onchange="myFunction()">
                  <option value="General">General
                  <option value="CallCenter">Call Center
                </select>

                <script>
                    
                function myFunction() {
                    var x = document.getElementById("mySelect").value.toString();
                    
                    if(x == "General"){
                        document.getElementById("divId").style.display = 'none';
                    }
                    else{
                        document.getElementById("divId").style.display = 'block';
                    }
                   
                }
                </script>

                <br><br>
                *Name: (any)<br>
                <input type="text" name="name" style="width: 100%" required><br>
                
                <div id = "divId" style="display:none;width: 100%">
                    *Work ID: (integer)<br>
                    <input type="text" name="workId" style="width: 100%" ><br>
                </div>
                
                *Date of Birth: (yyyy/mm/dd)<br>
                <input type="date" name="dob" style="width: 100%" required><br>
                *Gender:<br>
                <select name="gender" style="width: 100%" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select><br>
                *Address: (must have # and street)<br>
                <input type="text" name="address" style="width: 100%" required><br>
                *Zip: (5 digits)<br>
                <input type="text" name="zip" style="width: 100%" required><br>
                *Phone: (10 digits)<br>
                <input type="text" name="phone" style="width: 100%" required><br>
                Phone Backup: (10 digits)<br>
                <input type="text" name="phoneBackup" style="width: 100%"><br>
                *Email: (standard format)<br>
                <input type="email" name="email" style="width: 100%" required><br>
                Email Backup: (standard format)<br>
                <input type="email" name="emailBackup" style="width: 100%"><br>
                *Password: (8 digits, at least one: special char, digit, lowercase, uppercase)<br>
                <input type="password" name="password" style="width: 100%" required><br>
                *Password Confirmation: (match Password)<br>
                <input type="password" name="passwordConfirmation" style="width: 100%" required><br>
                <br>
                <input type="submit" value="Submit">
            </form>
            <!--Complete Interface Addnew.-->
        </div>
        
        
                

        
    <script>
        
        window.onload = function() {
            myFunction();
        };
    
        function validateForm() {
            
            var message = "";
            var x = document.forms["myForm"]["name"].value;
            if (x.search(/[a-zA-Z]/) == -1) {
                message = message + "Invalid name input. Please re-enter using letters.\n";
            }
            
            var x = document.forms["myForm"]["workId"].value;
            if(document.getElementById("mySelect").value.toString() == "General"){
                document.forms["myForm"]["workId"] = -1;
            }
            else{
                if (isNaN(x)) {
                    message = message + "Work ID must be a number\n";
                }    
                if (x == "") {
                    message = message + "Work ID must be entered\n";
                    document.forms["myForm"]["workId"] = -1;
                }   
            }
 
            
            var x = document.forms["myForm"]["dob"].value;
            /*if (isNaN(x)) {
                message = message + "Age must be a number\n";
            }  
            if (x > 110) {
                message = message + "Age entered is invalid. Please re-enter.\n";

            }*/
        
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
            }  

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
