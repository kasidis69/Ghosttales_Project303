<%-- 
    Document   : register
    Created on : 24 Sep 2020, 02:17:05
    Author     : kankkm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        
        <link href="css/style_2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <style>
body {
  background-image: url(img/fn.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/g.png">
                <h1>
สมัครสมาชิก</h1>
<form action="register" method="post">
                   <p>Username</p>
<input type="text"  name="username" required>
              <p>Password</p>
<input type="password"  name="password" required>
 <p>Firstname</p>
<input type="text"  name="firstname" required>
 <p>Lastname</p>
<input type="text"  name="lastname" required>
<div style="color: red" >${Message}</div>
                   <input type="submit" value="register">
                   <a href="login.jsp">คุณเป็นสมาชิกอยู่แล้วหรือป่าว คลิกเลย?</a>
                </form>
</div>
</div>
</body>
</html>
