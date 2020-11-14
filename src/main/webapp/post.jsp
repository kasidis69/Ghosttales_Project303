<%-- 
    Document   : post
    Created on : Sep 25, 2020, 1:58:17 AM
    Author     : BALL IT24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        
          <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
    </head>
    
    <body>
        <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Ghosttales</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="About.jsp">About</a>
          </li>
          <li class="nav-item">
            <a href="${user==null ?'':'post.jsp'}">
                 ${user==null ?'post':'post'}</a>
          </li>
          <li class="nav-item">
            <a href="${user==null ?'login':'logout'}">
                 ${user==null ?'Login' : 'Logout'}
        </a>
          </li>
                 <a  style="color: white">  ${user==null ?'Guest':''}</a>
          <li class="nav-item">
          
          <a href="profile?name=${user.username}"  style="color: white"> ${user==null ?'':user.username}</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/s.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Ghosttales</h1>
            <span class="subheading"> รวมเรื่องเล่าสุดหลอนจากทั่วทุกมุมโลก !!!</span>
          </div>
        </div>
      </div>
    </div>
  </header>
        <form action ="postServlet" method="POST">
        <h1>POST !!</h1>

        <label for="content">Post your story here:</label>
        <input type="text" name="title" placeholder="title" required />


        <textarea placeholder="content" id="content" name="content" rows="5" cols="150" required>

  
  </textarea>
<br>
Post by : <input type="text" name="username" value="${user.username}" readonly>
${Message}
<br>
<input type="submit" value="Post" /></form>
    </body>
</html>
