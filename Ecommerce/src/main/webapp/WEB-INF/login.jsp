<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login to Coding!!!!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<style type="text/css">
.white_text
{
    color: white;
}
.classic_button_next
{ 
    position: absolute; 
    right: 700px; 
    top: 250px; 
    text-align: center;
}

.classic_button_prev 
{ 
    position: absolute;
    right: 500px;
    top: 250px;
    text-align: center;
}

.img {
    display: block;
    margin: auto;
    width: 100%;
}
   

.form
{ 
    position: absolute; 
    right: 500px; 
    top: 150px; 
}


.button_large{
    
    background-color: #000080; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    height:60px;
    width:100px;
}


</style>
   
   
</head>

<body bgcolor = "#000000">
  
<script>
    
   function validate_login(){
     var uname,pwd,validate;
     var out_text = "";
     document.getElementById("_ivalidate").innerHTML = "";
     uname = document.getElementById("_iusername").value;
     pwd = document.getElementById("_ipassword").value;  
     var letterNumber = /^[a-zA-Z]+$/;
     if(uname.match(letterNumber) && pwd.match(letterNumber)){
       out_text = out_text + "Username and Password is valid";
       validate = true;
        } 
    else{
        out_text = out_text + "Invalid data data has to be alpha numeric only, Please Enter again!!";
        validate = false;
        }
       alert(out_text);
     if(validate){
       window.location="logged.html";
     }
    }    
   
    </script>
    
    <div style="text-align:center">
            <h2><font color = "white"> Enter the Login Credentials </font> </h1> 
            <h2><font color = "white"> Enter your Username and Password. </font> </h2> 
       <hr>
   </div>
    

    <div> 
        <img class = "img" src="./images/code-blue-landscape.jpg" alt="Smiley face" align="middle"> 
        <form class = "form" action="Script URL" method="POST">
        <fieldset>
            <table cellpadding = "10">
            <tr><th></th></tr>
            <tr>
            <td>
             <font color = "white">   USERNAME </font>
            </td>
            <td>
                <input type ="text" id ="_iusername" name ="_username">
            </td>
            </tr>
            <tr>
            <td>
               <font color = "white"> PASSWORD </font>
            </td>
            <td>
                <input type ="password" id ="_ipassword" name ="_password">
            </td>
            </tr>
            <tr>
              <td colspan = "2"><input type ="button" id ="_submit" name = "_submit" class="btn btn-default" value="SUBMIT" onclick="validate_login()"/> </td>
           <td><a href = ".\index.html"> Back</a></td>
            </tr>
        </table>    
           <p class = "white_text" id = "_ivalidate"></p>
        </fieldset>
        </form>
</div>
    
    
    
    </body>
</html>
