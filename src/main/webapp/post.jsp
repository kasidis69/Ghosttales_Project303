<%-- 
    Document   : post
    Created on : Sep 25, 2020, 1:58:17 AM
    Author     : BALL IT24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="postServlet" method="POST">
        <h1>POST !!</h1>
        <input type="text" name="title"/>
<label for="content">Post your story here:</label>

<textarea id="content" name="content" rows="10" cols="200">
  
  </textarea>

<input type="submit" value="submit" /></form>
    </body>
</html>
