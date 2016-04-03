
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
        <title>AdminAddnew</title>
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
            <h1>Sign Up</h1>
        </div>
        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <form name="myForm" action="/DbSystems/admins" onsubmit="return validateForm()" method="post">
                
                

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
                *WorkId: <br>
                <input type="text" name="WorkId" style="width: 200px" required><br>
                
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
            var x = document.forms["myForm"]["WorkId"].value;
            if (isNaN(x)) {
                message = message + "Invalid WorkId \n";
            }
            var x = document.forms["myForm"]["AdminId"].value;
            if (isNaN(x)) {
                message = message + "Invalid AdminId \n";
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

