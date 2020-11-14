<%-- 
    Document   : favoritelist
    Created on : Nov 13, 2020, 4:34:37 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p> มีทั้งหมด ${count} Favorite List</p>
        <c:forEach items="${myfavorite}" var="my" varStatus="vs" >
                <p><a href="getpost?id=${my.post.postId}">${my.post.title} Post by ${my.post.userinfousername.username} </a></p>
                </c:forEach>
    </body>
</html>
