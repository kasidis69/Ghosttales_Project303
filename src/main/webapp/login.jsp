<%-- 
    Document   : login
    Created on : 23 Sep 2020, 18:19:51
    Author     : kankkm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
       
    </head>
    <body>
  <style>
body {
  background-image: url(img/s.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>

        <div class="container">
            <div class="box">
                <img class="avatar" src="img/g.png">
                <h1>เข้าสู่ระบบ</h1>
                <form action="login" method="post">
                    <p>Username</p>
                    <input type="text"  name="username" required>
                    <p>Password</p>
                    <input type="password" name="password" required>
                    <div style="color: red" >${Message}</div>
                    <input type="submit" value="login">  
                    <a href="register.jsp">สมัครสมาชิก คลิกเลย</a>
                </form>
            </div>


        </div>
    </body>
</html>

