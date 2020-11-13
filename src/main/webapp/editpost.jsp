<%-- 
    Document   : editpost
    Created on : Nov 13, 2020, 5:47:39 AM
    Author     : BALL IT24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .center {
                margin: auto;
                height: 100%;
                width: 70%;
                border: 3px solid #73AD21;
                padding: 100px;
            }
            .u-section-1 .u-sheet-1 {
                min-height: 500px;
            }

            .u-section-1 .u-btn-1 {
                margin-left: 0;
                margin-right: 0;
                border-style: solid;
                font-weight: 700;
                font-size: 0.9375rem;
                margin-bottom: 60px;
                padding: 6px 31px 6px 30px;
            }
            .heart {
  color: red;
  background-color: currentColor;
  display: inline-block;
  height: 50px;
  margin: 0 10px;
  position: relative;
  top: 0;
  transform: rotate(-45deg);
  position: absolute; 
  left: 45%; top: 45%;
  width: 50px;
}

.heart::before,
.heart::after {
  content: "";
  background-color: currentColor;
  border-radius: 50%;
  height: 50px;
  position: absolute;
  width: 50px;
}

.heart:before {
  top: -25px;
  left: 0;
}

.heart:after {
  left: 25px;
  top: 0;
}

.heart:focus {
  color: black;
}
        </style>
        <link href="css/Page-1.css" rel="stylesheet" type="text/css"/>
        <link href="css/nicepage.css" rel="stylesheet" type="text/css"/>
        <link href="css/clean-blog.css" rel="stylesheet" type="text/css"/>
        <link href="css/clean-blog.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="editPost" method="POST">
            <div class="center">
                <div>
                    <h1>Hello World!</h1>
 <input type="number" name="id"  value="${post.postId}" /><br/>
                    <label for="content">New title:</label>
                    <input type="text" id="title"  name="title"  value="${post.title}" /><br/>

                    <label for="content">New Content:</label><br/>
                    <textarea placeholder="content" id="content" name="content" rows="10" cols="80"  >
                        ${post.content}
                    </textarea>
                    Post by : <input type="text" name="username" value="${user.username}" readonly>
${Message}
<input type="submit" value="EDIT">
<div class="wrapper">
    <a class="heart" href="#"></a>
</div>

<%--    <a href="editPost" 
                        class="u-border-2 u-border-palette-4-base u-btn u-btn-round u-button-style u-hover-color-4-dark-1 u-none u-radius-6 u-text-body-color u-text-hover-white u-btn-1">Save Change</a>
--%>
<%--    <a href="editpost.jsp" 
class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius-6 u-text-body-color u-text-hover-white u-btn-1">Cancel</a> --%>
                </div>
            </div>
        </form>
    </body>
</html>