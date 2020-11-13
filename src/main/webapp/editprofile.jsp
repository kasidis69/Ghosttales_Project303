<%-- 
    Document   : editprofile
    Created on : 13 Nov 2020, 02:24:16
    Author     : kankkm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
Edit Profile</h1>
<form action="editprofile" method="post">
                   <p>Username is ${user.username}</p>
                   
              <p>Current Password</p>
<input type="password"  name="password"  id="myInput" required>
<input type="checkbox" onclick="myFunction()">Show Password
<p>New Password ** not change password you can put current password**</p>
<input type="password"  name="newpassword"  id="myInput2" required>
<input type="checkbox" onclick="myFunction2()">Show Password
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script>
function myFunction2() {
  var x = document.getElementById("myInput2");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
 <p>Firstname</p>
<input type="text"  name="firstname"  value="${user.firstName}"required>
 <p>Lastname</p>
<input type="text"  name="lastname" value="${user.lastName}" required>
<div style="color: red" >${Message}</div>
                   <input type="submit" value="EDIT">
                   
                </form>
    </body>
</html>
