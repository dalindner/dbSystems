<%-- 
    Document   : NewRequest
    Created on : Mar 17, 2016, 7:33:27 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.User"%>
<%@page import="model.Event_requests"%>
<%@page import="model.Items_of_request"%>
<%@page import="model.Requested_items_link"%>
<%@page import="model.Requests_for_help"%>
<%@page import="model.Type_of_support"%>
<%@page import="model.IndexTrack"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
            <% boolean loggedIn = false; %>
            <% String email = ""; %>
            <% int id = 0; %>
            <% int requestNum = 0; %>
            <% int itemNum = 0; %>

            <c:forEach items="${AllUser}" var="p">
                <c:if test="${p.loggedIn == 1}">
                    <% loggedIn = true; %>
                    <c:set var="email" value="${p.email}"/>
                    <% email = pageContext.getAttribute("email").toString(); %>
                    <c:set var="id" value="${p.id}"/>
                    <% id = Integer.parseInt(pageContext.getAttribute("id").toString()); %>
                    <div style="margin-left: 25%;">
                    </div>
                </c:if>
            </c:forEach>
        
            <c:forEach items="${IndexTrack}" var="z">
                    <c:set var="requestNum" value="${z.requestNum}"/>
                    <% requestNum = Integer.parseInt(pageContext.getAttribute("requestNum").toString()); %>
                    <c:set var="itemNum" value="${z.itemNum}"/>
                    <% itemNum = Integer.parseInt(pageContext.getAttribute("itemNum").toString()); %>
                    <div style="margin-left: 25%;">
                    </div>
            </c:forEach>
            
            <%= itemNum %>
            <%= requestNum %>
        
            <% 

            Map<String, Integer> vars = new HashMap();
            Map<String, String> vars2 = new HashMap();
                
            int numEntries = Integer.parseInt(request.getParameter("numEntries"));  
            int event = Integer.parseInt(request.getParameter("event"));
            String description = request.getParameter("description");
            String request1 = request.getParameter("request1");
            int quantity1 = Integer.parseInt(request.getParameter("quantity1"));
            int type1 = Integer.parseInt(request.getParameter("type1"));
            String request2 = request.getParameter("request2");
            int quantity2 = Integer.parseInt(request.getParameter("quantity2"));
            int type2 = Integer.parseInt(request.getParameter("type2"));
            String request3 = request.getParameter("request3");
            int quantity3 = Integer.parseInt(request.getParameter("quantity3"));
            int type3 = Integer.parseInt(request.getParameter("type3"));
            String request4 = request.getParameter("request4");
            int quantity4 = Integer.parseInt(request.getParameter("quantity4"));
            int type4 = Integer.parseInt(request.getParameter("type4"));
            String request5 = request.getParameter("request5");
            int quantity5 = Integer.parseInt(request.getParameter("quantity5"));
            int type5 = Integer.parseInt(request.getParameter("type5"));
            
            vars.put("quantity1",quantity1);
            vars.put("quantity2",quantity2);
            vars.put("quantity3",quantity3);
            vars.put("quantity4",quantity4);
            vars.put("quantity5",quantity5);
            vars.put("type1",type1);
            vars.put("type2",type2);
            vars.put("type3",type3);
            vars.put("type4",type4);
            vars.put("type5",type5);
            vars2.put("request1",request1);
            vars2.put("request2",request2);
            vars2.put("request3",request3);
            vars2.put("request4",request4);
            vars2.put("request5",request5);
            
            
            String temp1 = "";
            String temp2 = "";
            String temp3 = "";

            requestNum++;
            
            DataAccess da = new DataAccess();
            
            Requests_for_help a = new Requests_for_help(1,id,description);
            //int requests_id, int requestor_id_fk, String description
          da.addNewRequestForHelp(a);
            
            
            Event_requests b = new Event_requests(event, requestNum, id, -1);
            //int event_id_fk, int request_id_fk, int request_id_creator_fk, int event_emp_id
            da.addNewEventRequest(b);
    
            for(int i = 1; i <= numEntries; i++){
                
                itemNum++;
                
                temp1 = "request" + i;
                temp2 = "quantity" + i;
                temp3 = "type" + i;
                
                Items_of_request c = new Items_of_request(1,vars.get(temp3),vars.get(temp2),false,vars2.get(temp1));
                //int item_id, int SupportType_id_fk, int quantity, boolean completed
                da.addNewItemOfRequest(c);           
                
                Requested_items_link d = new Requested_items_link(-1, itemNum, requestNum);
                //int item_id, int item_id_fk, requests_id_fk
                da.addNewRequestedItemsLink(d);  
    
                //editIndexTrack(int requestNum, int itemNum)
                da.editIndexTrack(requestNum, itemNum);             
            }
                
            
            
            da.updateViews();
            
            
            
            response.sendRedirect("/DbSystems/index");
            
            
            %>
            
            
            
            
            
            
    </body>
</html>
