<%-- 
    Document   : ManagerEditPost
    Created on : Aug 8, 2015, 11:10:38 PM
    Author     : Thang
--%>

<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String detail = request.getParameter("detail");
            String category = request.getParameter("category");
            String image = request.getParameter("image");
            
            DataAccess da = new DataAccess();
            da.edit(id, title, description, detail, category, image);
            
            response.sendRedirect("/CRUD_News/AllPost");
        %>
    </body>
</html>
