<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
   <%
   System.out.println("Hi, this is where you include java."); 
   %>
   <head>
      <title>Welcome to StuffSpot!!!!! :) </title>
      
     <meta name="viewport" content="initial-scale=1, maximum-scale=1">
     <link  rel="stylesheet" type = "text/css" href="/Ecommerce/bootstrap/css/bootstrap.min.css" >
     <script type="text/javascript" src="/Ecommerce/bootstrap/js/jquery-3.1.0.js"></script>
     <script type="text/javascript" src="/Ecommerce/bootstrap/js/bootstrap.min.js"></script>
      <style>   
      #carouselButtons {
    margin-left: 100px;
    position: absolute;
    bottom: 0px;
                        }
.carousel-caption {
    position: relative;
    left: auto;
    right: auto;
    color: black;
}</style>
      </head>
   
   <body>
   
   
<div class="jumbotron text-center">
  <h1>Welcome to Stuff Spot !!!!!!! </h1>
  <p>Your Economy Supermarket at your convenience!!!! <br />
   Hi !!!!! ${currentUser} 
  </p> 
  <p color = "blue">${msg}</p>
</div>

<nav class = "navbar navbar-default" role = "navigation">
   
   <div class = "navbar-header">
      <button type = "button" class = "navbar-toggle" 
         data-toggle = "collapse" data-target = "#example-navbar-collapse">
         <span class = "sr-only">Toggle navigation</span>
         <span class = "icon-bar"></span>
         <span class = "icon-bar"></span>
         <span class = "icon-bar"></span>
      </button>
		
      <a class = "navbar-brand" href = "#">LATEST OFFERS</a>
   </div>
   
   <div class = "collapse navbar-collapse" id = "example-navbar-collapse">
	
      <ul class = "nav navbar-nav">
         	
         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> ELECTRONICS <b class = "caret"></b>   </a>
            <ul class = "dropdown-menu">
               <li><a href = "#">Desktops</a></li>
               <li><a href = "#">Laptops</a></li>
               <li><a href = "#">Mobiles</a></li>
               <li class = "divider"></li>
               <li><a href = "#">Miscellaneous</a></li>
               <li class = "divider"></li>
               <li><a href = "#">Imported ELectronics</a></li>
            </ul>
         </li>
		
		
		<li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> HOME NEEDS <b class = "caret"></b>   </a>
            <ul class = "dropdown-menu">
               <li><a href = "#">Kitchen</a></li>
               <li><a href = "#">Furniture</a></li>
               <li><a href = "#">Home Theatre</a></li>
               <li><a href = "#">Tools</a></li>
            </ul>
         </li>
		
		<li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown"> BOOKS <b class = "caret"></b>   </a>
            <ul class = "dropdown-menu">
               <li><a href = "#">Fiction</a></li>
               <li><a href = "#">Romance</a></li>
               <li><a href = "#">Sci-fi</a></li>
               <li><a href = "#">Competetive</a></li>
               <li><a href = "#">School & College</a></li>
            </ul>
         </li>
		
			
      </ul>
      <ul>
         <a class = "navbar-brand pull-right" href = "/Ecommerce/login">Login</a>
          <a class = "navbar-brand pull-right" href = "/Ecommerce/signup">Signup</a>
      </ul>
     
   </div>
   </nav>


<div class="container">
<div class="row">
<div class="col-sm-4">
<p> For further details contact the office address.<br/>
XYZ Office, <br/>
ABC Premises,<br/>
ABC Nagar,<br/>
ABC Area,<br/>
City,<br/>
Country,<br/>
Postal Code(number)<br/>
contact@ABC.in,<br/>
123-456-789<br/>
</p>

<p> For any suggestions and contact.<br/>
suggestions@ABC.in,<br/>
000-456-789<br/>
</p>


</div>

<div>
<img src = "images\misc\company.jpg">
</div>
</div>
</div>
     
   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">HELP</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="#">Policies</a></li>
    </ul>
    <ul><a class = "navbar-brand pull-right" href="#">@Copyright</a></ul>
  </div>
</nav>
      
   </body>
</html>