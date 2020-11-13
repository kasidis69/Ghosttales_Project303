<%-- 
    Document   : showsearch
    Created on : 13 Nov 2020, 22:13:01
    Author     : kankkm
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
        <c:forEach items="${title}" var="post" varStatus="vs">
        <div class="post-preview">
            
          <a href="post.html">
            <h2 class="post-title" >
                
                 
 
    
        <a href="getpost?id=${post.postId}" > ${post.title}  </a>
        </h2>
    <h3 class="post-subtitle">
              <!--Problems look mighty small from 150 miles up-->
            </h3>
          </a>
          <p class="post-meta">Posted by
            <a href="profile?name=${post.userinfousername.username}">${post.userinfousername.username}  </a>
            on ${post.createTime}</p>
        </div>
        <hr>
        <div class="post-preview">
          <a href="post.html">
   </tr> 
   
   
</c:forEach>
    </body>
</html>
