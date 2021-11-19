<!DOCTYPE html>
<html>
  <head>
    <title>Flipkart</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <style>
    body {
      background-color: white;
    }
  </style>
  <body>
    <nav class="button">
      <img style="float: left" src="18.png" width="200px" height="50px" />
      <ul>
        <li><a href="login.jsp" class="head">Login</a></li>
        <li><a href="signup.jsp" class="head">Sign up</a></li>
      </ul>
    </nav>
    <div class="main">
    <a href="login.jsp"><img class="images" src="21.png"  width="1250px" height="400px" /></a>
    <a href="login.jsp"> <img class="images" src="20.png"   width="1250px" height="400px" /> </a>
    <script>
      var myIndex = 0;
       slideImage();
      function slideImage() {
        var i;
        var x = document.getElementsByClassName("images");
        for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";  
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}    
        x[myIndex-1].style.display = "block";  
        setTimeout(slideImage, 1500); 
      }
      </script>
  </body>
</html>
