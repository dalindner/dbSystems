<%-- 
    Document   : NewEvents
    Created on : March 24, 2016, 03:41:02 PM
    Author     : Zuoyuan Zhao
--%>

<%@page import="dao.CCempDataAccess"%>
<%@page import="dao.CCDataAccess"%>
<%@page import="model.callcenter"%>
<%@page import="model.callcenteremp"%>
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

             

        <div style="width: 900px; margin-left: 40%; margin-right: auto">
            <h1>Call Center Deleted</h1>
        </div>
        <br>     
        
        <% 
            //String type = request.getParameter("accountType");  
        %>
        
       
                <c:forEach items="${TheCC}" var="t">
                
                            <c:forEach items="${AllCCemp}" var="p">
                                <c:if test="${t.cc_id == p.cc_id}">
                                    <% int id =0;%>
                                    <%int cc_emp_id = 0;%>
                                    <%int id_fk = 0;%>
                                    <c:set var = "id" value = "${p.cc_id}"/>
                                    <c:set var = "cc_emp_id" value = "${p.cc_emp_id}"/>
                                    <c:set var = "id_fk" value = "${p.id_fk}"/>
                                    
                                    <% 
                                        int Available = 0;
                                        id = Integer.parseInt(pageContext.getAttribute("id").toString());
                                        cc_emp_id = Integer.parseInt(pageContext.getAttribute("cc_emp_id").toString());
                                        id_fk = Integer.parseInt(pageContext.getAttribute("id_fk").toString());
                                        CCempDataAccess da = new CCempDataAccess();
                                        da.editCCemp(id, id_fk,cc_emp_id,Available);
                                        CCDataAccess d = new CCDataAccess();
                                        d.editNotActive(id);
                                    %>
                                    
                                </c:if>
                            
                            </c:forEach>
                

                
                </c:forEach>
            
        
                

        
    
   

        
      
        
        
        
        
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
