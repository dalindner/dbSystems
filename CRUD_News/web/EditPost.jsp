<%-- 
    Document   : EditPost
    Created on : Aug 8, 2015, 11:08:34 PM
    Author     : Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit News</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto">
            <c:forEach items="${getNewsById}" var="p">
                <form action="JSP/ManagerEditPost.jsp" method="post">
                    <input type="hidden" name="id" value="${p.id}">
                    Title:<br>
                    <input type="text" value="${p.title}" name="title" style="width: 200px"><br>
                    Description:<br>
                    <input type="text" value="${p.description}" name="description" style="width: 200px"><br>
                    Detail:<br>
                    <textarea name="detail" style="width: 400px; height: 200px">${p.detail}</textarea><br>
                    Category: 
                    <select name="category">
                        <option value="${p.category}">${p.category}</option>
                        <option value="World">World</option>
                        <option value="Tech">Tech</option>
                        <option value="Sport">Sport</option>
                    </select><br>
                    Image:<br>
                    <input type="text" value="${p.image}" name="image" style="width: 200px"><br>
                    <input type="submit" value="Submit">
                </form>
            </c:forEach>

        </div>
    </body>
</html>
