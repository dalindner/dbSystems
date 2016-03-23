<%-- 
    Document   : CreateRequest
    Created on : Mar 17, 2016, 7:16:18 PM
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
                    <% email = pageContext.getAttribute("email").toString(); %>
                    <div style="margin-left: 25%;">
                    </div>
                </c:if>
            </c:forEach>


            <div style="width: 900px; margin-left: 40%; margin-right: auto">
                <h3>Create Request</h3>
                <br>
                <form name="myForm" action="/DbSystems/NewRequest" method="post">
                    
                    <input type="number" name="numEntries" style="width: 200px; display: none" value=1><br>
                    
                    *Select the event you were affected by<br>
                    <select id="event" name="event">
                      <option value=1>Event1
                      <option value=2>Event2
                    </select>
                    <br>
                    <br>
                    
                    Request Notes <br>
                    <textarea  type="text" name="description" style="width: 200px"></textarea><br><br>
                    
                    <div id = "item1" style="width: 200px; border-style: solid">                     
                        
                        *Request <br>
                        <input type="text" name="request1" style="width: 200px" required value="Item Name"><br>
                        
                        *Quantity <br>
                        <input type="number" name="quantity1" style="width: 200px" required min="1" value=1><br>
                        
                        *Type of Request <br>
                        <select id="type1" name="type1">
                            <c:forEach items="${AllSupportTypes}" var="t">
                                <option value=${t.supportType_id}>${t.item_category}
                            </c:forEach>
                        </select>
                        <br>

                    </div>
                    
                    <div id = "item2" style="width: 200px; border-style: solid; display: none">
                        
                        *Request <br>
                        <input type="text" name="request2" style="width: 200px" required value="Item Name"><br>
                        
                        *Quantity <br>
                        <input type="number" name="quantity2" style="width: 200px" required min="1" value=1><br>
                        
                        *Type of Request <br>
                        <select id="type2" name="type2">
                            <c:forEach items="${AllSupportTypes}" var="t">
                                <option value=${t.supportType_id}>${t.item_category}
                            </c:forEach>
                        </select>
                        <br>

                    </div>
                    
                    <div id = "item3" style="width: 200px; border-style: solid; display: none">
                        
                        *Request <br>
                        <input type="text" name="request3" style="width: 200px" required value="Item Name"><br>
                        
                        *Quantity <br>
                        <input type="number" name="quantity3" style="width: 200px" required min="1" value=1><br>
                        
                        *Type of Request <br>
                        <select id="type3" name="type3">
                            <c:forEach items="${AllSupportTypes}" var="t">
                                <option value=${t.supportType_id}>${t.item_category}
                            </c:forEach>
                        </select>
                        <br>

                    </div>
                    
                    <div id = "item4" style="width: 200px; border-style: solid; display: none">
                        
                        *Request <br>
                        <input type="text" name="request4" style="width: 200px" required value="Item Name"><br>
                        
                        *Quantity <br>
                        <input type="number" name="quantity4" style="width: 200px" required min="1" value=1><br>
                        
                        *Type of Request <br>
                        <select id="type4" name="type4">
                            <c:forEach items="${AllSupportTypes}" var="t">
                                <option value=${t.supportType_id}>${t.item_category}
                            </c:forEach>
                        </select>
                        <br>

                    </div>
                    
                    <div id = "item5" style="width: 200px; border-style: solid; display: none">
                        
                        *Request <br>
                        <input type="text" name="request5" style="width: 200px" required value="Item Name"><br>
                        
                        *Quantity <br>
                        <input type="number" name="quantity5" style="width: 200px" required min="1" value=1><br>
                        
                        *Type of Request <br>
                        <select id="type5" name="type5">
                            <c:forEach items="${AllSupportTypes}" var="t">
                                <option value=${t.supportType_id}>${t.item_category}
                            </c:forEach>
                        </select>
                        <br>

                    </div>                 
                    
                    <br>
                    <div id = "addItem">
                        <button type="button" onclick="add()">Add Item</button>
                    </div>
                    <br>
                    <div id = "removeItem" style="display: none">
                        <button type="button" onclick="remov()" >Remove Item</button>
                    </div>
                    <br>
                    
                    <script>
                        
                        var requestsShown = 1;

                        function add() {

                            requestsShown++;
                            
                            document.myForm.numEntries.value = requestsShown;
                            
                            var temp = "item" + String(requestsShown);
                            document.getElementById(temp).style.display = 'block';
                           
                            
                            if(requestsShown >= 5){
                                document.getElementById("addItem").style.display = 'none';
                                document.getElementById("removeItem").style.display = 'block';
                            }
                            else if(requestsShown <= 1){
                                document.getElementById("addItem").style.display = 'block';
                                document.getElementById("removeItem").style.display = 'none';
                            }
                            else{
                                document.getElementById("addItem").style.display = 'block';
                                document.getElementById("removeItem").style.display = 'block';
                            }
                        }
                        function remov() {
                            
                            
                            var temp = "item" + String(requestsShown);
                            document.getElementById(temp).style.display = 'none';
                            
                            clearExtras();
                            requestsShown--;
                            
                            document.myForm.numEntries.value = requestsShown;
                            
                            if(requestsShown >= 5){
                                document.getElementById("addItem").style.display = 'none';
                                document.getElementById("removeItem").style.display = 'block';
                            }
                            else if(requestsShown <= 1){
                                document.getElementById("addItem").style.display = 'block';
                                document.getElementById("removeItem").style.display = 'none';
                            }
                            else{
                                document.getElementById("addItem").style.display = 'block';
                                document.getElementById("removeItem").style.display = 'block';
                            }
                        }
                        
                        function clearExtras() {
                            
                            var i = requestsShown;
                            for(i; i<5; i++){
                                var temp1 = "request" + String(requestsShown);
                                var temp2 = "quantity" + String(requestsShown);
                                var temp3 = "type" + String(requestsShown);
                                
                                document.myForm[temp1].value = 'Item Name';
                                document.myForm[temp2].value = 1;
                                
                            }
                        }
                        
                    </script>

                    <input type="submit" value="Submit">
                </form>
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