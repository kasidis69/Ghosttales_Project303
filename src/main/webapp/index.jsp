<%-- 
    Document   : index
    Created on : Sep 27, 2020, 4:47:29 AM
    Author     : User
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
    <div class="row bg-light">
    <div class='col-9'>
        <img src=' ' height="40"/>Gosttales :: Home
       <br>
        <c:forEach items="${ps}" var="post" varStatus="vs">
 
    <tr> 
    <a href=""><td>${vs.count}:${post.title}<br></td> </a>
   </tr> 
   
    
</c:forEach>
   <p>${psz}</p>
   <p>${ps1}</p>
    </div>
    <div class='col-3'>  
        <label style="margin-left:100px">Hello ${user==null ?'Guest':user}
       <div style="margin-left:30px">
        <p><a href="#">test</a></p>
        <p><a href="#">test2</a></p>
        <p><a href="#">test3</a></p>
        <p><a href="#">test4</a></p>
        <a href="${user==null ?'':'post.jsp'}">
                 ${user==null ?'':'Post'}
        
      
        <p>
        <a href="${user==null ?'login':'logout'}">
                 ${user==null ?'Login' : 'Logout'}
        </a>
        </p>
        </div>
        
    </body>
</html>
