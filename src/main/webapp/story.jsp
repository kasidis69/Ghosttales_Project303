<%-- 
    Document   : story
    Created on : Sep 27, 2020, 4:56:24 PM
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
       <!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Clean Blog - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <!--<link href="/clean-blog.min.html" rel="stylesheet">-->
  <style >body{font-size:20px;color:#212529;font-family:Lora,'Times New Roman',serif}p{line-height:1.5;margin:30px 0}p a{text-decoration:underline}h1,h2,h3,h4,h5,h6{font-weight:800;font-family:'Open Sans','Helvetica Neue',Helvetica,Arial,sans-serif}a{color:#212529;transition:all .2s}a:focus,a:hover{color:#0085a1}blockquote{font-style:italic;color:#868e96}.section-heading{font-size:36px;font-weight:700;margin-top:60px}.caption{font-size:14px;font-style:italic;display:block;margin:0;padding:10px;text-align:center;border-bottom-right-radius:5px;border-bottom-left-radius:5px}::-moz-selection{color:#fff;background:#0085a1;text-shadow:none}::selection{color:#fff;background:#0085a1;text-shadow:none}img::-moz-selection{color:#fff;background:0 0}img::selection{color:#fff;background:0 0}img::-moz-selection{color:#fff;background:0 0}#mainNav{position:absolute;border-bottom:1px solid #e9ecef;background-color:#fff;font-family:'Open Sans','Helvetica Neue',Helvetica,Arial,sans-serif}#mainNav .navbar-brand{font-weight:800;color:#343a40}#mainNav .navbar-toggler{font-size:12px;font-weight:800;padding:13px;text-transform:uppercase;color:#343a40}#mainNav .navbar-nav>li.nav-item>a{font-size:12px;font-weight:800;letter-spacing:1px;text-transform:uppercase}@media only screen and (min-width:992px){#mainNav{border-bottom:1px solid transparent;background:0 0}#mainNav .navbar-brand{padding:10px 20px;color:#fff}#mainNav .navbar-brand:focus,#mainNav .navbar-brand:hover{color:rgba(255,255,255,.8)}#mainNav .navbar-nav>li.nav-item>a{padding:10px 20px;color:#fff}#mainNav .navbar-nav>li.nav-item>a:focus,#mainNav .navbar-nav>li.nav-item>a:hover{color:rgba(255,255,255,.8)}}@media only screen and (min-width:992px){#mainNav{transition:background-color .2s;transform:translate3d(0,0,0);-webkit-backface-visibility:hidden}#mainNav.is-fixed{position:fixed;top:-67px;transition:transform .2s;border-bottom:1px solid #fff;background-color:rgba(255,255,255,.9)}#mainNav.is-fixed .navbar-brand{color:#212529}#mainNav.is-fixed .navbar-brand:focus,#mainNav.is-fixed .navbar-brand:hover{color:#0085a1}#mainNav.is-fixed .navbar-nav>li.nav-item>a{color:#212529}#mainNav.is-fixed .navbar-nav>li.nav-item>a:focus,#mainNav.is-fixed .navbar-nav>li.nav-item>a:hover{color:#0085a1}#mainNav.is-visible{transform:translate3d(0,100%,0)}}header.masthead{margin-bottom:50px;background:no-repeat center center;background-color:#868e96;background-attachment:scroll;position:relative;background-size:cover}header.masthead .overlay{position:absolute;top:0;left:0;height:100%;width:100%;background-color:#212529;opacity:.5}header.masthead .page-heading,header.masthead .post-heading,header.masthead .site-heading{padding:200px 0 150px;color:#fff}@media only screen and (min-width:768px){header.masthead .page-heading,header.masthead .post-heading,header.masthead .site-heading{padding:200px 0}}header.masthead .page-heading,header.masthead .site-heading{text-align:center}header.masthead .page-heading h1,header.masthead .site-heading h1{font-size:50px;margin-top:0}header.masthead .page-heading .subheading,header.masthead .site-heading .subheading{font-size:24px;font-weight:300;line-height:1.1;display:block;margin:10px 0 0;font-family:'Open Sans','Helvetica Neue',Helvetica,Arial,sans-serif}@media only screen and (min-width:768px){header.masthead .page-heading h1,header.masthead .site-heading h1{font-size:80px}}header.masthead .post-heading h1{font-size:35px}header.masthead .post-heading .meta,header.masthead .post-heading .subheading{line-height:1.1;display:block}header.masthead .post-heading .subheading{font-size:24px;font-weight:600;margin:10px 0 30px;font-family:'Open Sans','Helvetica Neue',Helvetica,Arial,sans-serif}header.masthead .post-heading .meta{font-size:20px;font-weight:300;font-style:italic;font-family:Lora,'Times New Roman',serif}header.masthead .post-heading .meta a{color:#fff}@media only screen and (min-width:768px){header.masthead .post-heading h1{font-size:55px}header.masthead .post-heading .subheading{font-size:30px}}.post-preview>a{color:#212529}.post-preview>a:focus,.post-preview>a:hover{text-decoration:none;color:#0085a1}.post-preview>a>.post-title{font-size:30px;margin-top:30px;margin-bottom:10px}.post-preview>a>.post-subtitle{font-weight:300;margin:0 0 10px}.post-preview>.post-meta{font-size:18px;font-style:italic;margin-top:0;color:#868e96}.post-preview>.post-meta>a{text-decoration:none;color:#212529}.post-preview>.post-meta>a:focus,.post-preview>.post-meta>a:hover{text-decoration:underline;color:#0085a1}@media only screen and (min-width:768px){.post-preview>a>.post-title{font-size:36px}}.floating-label-form-group{font-size:14px;position:relative;margin-bottom:0;padding-bottom:.5em;border-bottom:1px solid #dee2e6}.floating-label-form-group input,.floating-label-form-group textarea{font-size:1.5em;position:relative;z-index:1;padding:0;resize:none;border:none;border-radius:0;background:0 0;box-shadow:none!important;font-family:Lora,'Times New Roman',serif}.floating-label-form-group input::-webkit-input-placeholder,.floating-label-form-group textarea::-webkit-input-placeholder{color:#868e96;font-family:Lora,'Times New Roman',serif}.floating-label-form-group label{font-size:.85em;line-height:1.764705882em;position:relative;z-index:0;top:2em;display:block;margin:0;transition:top .3s ease,opacity .3s ease;opacity:0}.floating-label-form-group .help-block{margin:15px 0}.floating-label-form-group-with-value label{top:0;opacity:1}.floating-label-form-group-with-focus label{color:#0085a1}form .form-group:first-child .floating-label-form-group{border-top:1px solid #dee2e6}footer{padding:50px 0 65px}footer .list-inline{margin:0;padding:0}footer .copyright{font-size:14px;margin-bottom:0;text-align:center}.btn{font-size:14px;font-weight:800;padding:15px 25px;letter-spacing:1px;text-transform:uppercase;border-radius:0;font-family:'Open Sans','Helvetica Neue',Helvetica,Arial,sans-serif}.btn-primary{background-color:#0085a1;border-color:#0085a1}.btn-primary:active,.btn-primary:focus,.btn-primary:hover{color:#fff;background-color:#00657b!important;border-color:#00657b!important}.btn-lg{font-size:16px;padding:25px 35px}</style>
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="post.html">Sample Post</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h1>Man must explore, and this is exploration at its greatest</h1>
            <h2 class="subheading">Problems look mighty small from 150 miles up</h2>
            <span class="meta">Posted by
              <a href="#">Start Bootstrap</a>
              on August 24, 2019</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman's earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>

          <p>Science cuts two ways, of course; its products can be used for both good and evil. But there's no turning back from science. The early warnings about technological dangers also come from science.</p>

          <p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>

          <p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That's how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>

          <p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>

          <h2 class="section-heading">The Final Frontier</h2>

          <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>

          <p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>

          <blockquote class="blockquote">The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>

          <p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>

          <h2 class="section-heading">Reaching for the Stars</h2>

          <p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>

          <a href="#">
            <img class="img-fluid" src="img/post-sample-image.jpg" alt="">
          </a>
          <span class="caption text-muted">To go places and do things that have never been done before – that’s what living is all about.</span>

          <p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>

          <p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>

          <p>Placeholder text by
            <a href="http://spaceipsum.com/">Space Ipsum</a>. Photographs by
            <a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>.</p>
        </div>
      </div>
    </div>
  </article>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2020</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>

</html>

    </body>
</html>
