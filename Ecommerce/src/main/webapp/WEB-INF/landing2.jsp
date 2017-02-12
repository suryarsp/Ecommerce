<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
          <c:if test="${currentUser == 'Guest'}">
          <a class = "navbar-brand pull-right" href = "/Ecommerce/login">Login</a>
          <a class = "navbar-brand pull-right" href = "/Ecommerce/signup">Signup</a>
          </c:if>
          <c:if test="${currentUser != 'Guest'}">
          <a class = "navbar-brand pull-right" href = "/Ecommerce/j_spring_security_logout">Logout</a>
          </c:if>
          <c:if test="${isAdmin == true}">
          <a class = "navbar-brand pull-right" href = "/Ecommerce/admin_add_supplier">Admin</a>
          </c:if>
          
      </ul>
     
   </div>
   </nav>



<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Get Started</h3>
      <p>Browse More latest Deals</p>
    <div class = "carousel-caption">
    <img src="/Ecommerce/images/offers.png"/>
    <p><br /><h3>The place for getting the best deals of the season.</h3></p>
    </div>
    
    </div>
    <div class="col-sm-4">
    <h3>Home Needs</h3>
      <p>Browse More Home Needs</p>
    
    <div id="L_HomeNeedsCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#L_HomeNeedsCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#L_HomeNeedsCarousel" data-slide-to="1"></li>
    <li data-target="#L_HomeNeedsCarousel" data-slide-to="2"></li>
    <li data-target="#L_HomeNeedsCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    
    <div class="item active">
      <a href = "/Ecommerce/hello">   <img src="images\homeneeds\lights_1_ecobrand.jpg" alt="ecobrand_lights"> </a>
      <div class="carousel-caption">
        <h3>Power Saving Lights</h3>
        <p>These lights save lot of electricity by using LED.<br /><strike>&#8377;500</strike><br />&#8377;465</p>
      </div>
      <div >
      </div>
    </div>

    <div class="item">
      <img src="images\homeneeds\mixie_1.jpg" alt="mixie">
      <div class="carousel-caption">
        <h3>Mixer</h3>
        <p>Mixer of high quality at affordable price..<br /><strike>&#8377;950</strike><br />&#8377;820</p>
      </div>
    </div>

    <div class="item">
      <img src="images\homeneeds\saucer_rajdhan_1.jpg" alt="saucer">
      <div class="carousel-caption">
        <h3>Cup and Saucer set</h3>
        <p>A Cup and Saucer set with decorative designs.<br /><strike>&#8377;2100</strike><br />&#8377;1900</p>
      </div>
    </div>

    <div class="item">
      <img src="images\homeneeds\mosqBat_1.jpg" alt="mosquitobat">
      <div class="carousel-caption">
        <h3>Mosquito Bat</h3>
        <p>Avoid diseases, eradicate mosquito with this easy to use product.<br /><strike>&#8377;300</strike><br />&#8377;260</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#L_HomeNeedsCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#L_HomeNeedsCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
    
    
      
    </div>
    <div class="col-sm-4">
      <h3>Electronics</h3> 
      <p>Browse More Electronics Items</p>
  <div id="L_ElectronicsCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#L_ElectronicsCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#L_ElectronicsCarousel" data-slide-to="1"></li>
    <li data-target="#L_ElectronicsCarousel" data-slide-to="2"></li>
    <li data-target="#L_ElectronicsCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images\electronics\desktop_1.jpg" alt="ecobrand_lights">
      <div class="carousel-caption">
        <h3>Desktop LP 4WA01</h3>
        <p>Desktop all basic level functionality.<br /><strike>&#8377;43500</strike><br />&#8377;41000</p>
      </div>
      <div >
      </div>
    </div>

    <div class="item">
      <img src="images\electronics\desktop_2.jpg" alt="mixie">
      <div class="carousel-caption">
        <h3>Desktop BELL 7CY81</h3>
        <p>Affordable Desktop for education purposes.<br /><strike>&#8377;31950</strike><br />&#8377;30820</p>
      </div>
    </div>

    <div class="item">
      <img src="images\electronics\laptop_1.jpg" alt="saucer">
      <div class="carousel-caption">
        <h3>Laptop LP PF1000</h3>
        <p>Laptop for Professional Use.<br /><strike>&#8377;2100</strike><br />&#8377;1900</p>
      </div>
    </div>

    <div class="item">
      <img src="images\electronics\mobile_1.jpg" alt="mosquitobat">
      <div class="carousel-caption">
        <h3>Rokia A200</h3>
        <p>A great Camera mobile with great build quality.<br /><strike>&#8377;8300</strike><br />&#8377;7260</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#L_ElectronicsCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#L_ElectronicsCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>








    </div>
  </div>
</div>
     
     <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/Ecommerce/help">HELP</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="#">Policies</a></li>
    </ul>
    <ul><a class = "navbar-brand pull-right" href="#">@Copyright</a></ul>
  </div>
</nav>
      
   </body>
</html>