<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sign up to Coding!!!!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<style type="text/css">

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
    right: 650px; 
    top: 125px; 
}

.error{
    position: absolute; 
    right: 560px; 
    top: 600px; 
  
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
    
   function _validate_signup(){
       document.getElementById("_ioutput_message").innerHTML = "";      
     var ret_value = false
     var field,pwd,validate;
     var out_text = "";
     var alpha_numeric = /^[a-zA-Z0-9]+$/;
     var alpha = /^[a-zA-Z]+$/;
     var numeric = /^[0-9]+$/;
     
     
     if(!ret_value){
      field = document.getElementById("_iusername").value;
      if(field.toString() == "" || field.toString().length < 6 || !field.match(alpha_numeric))
      {out_text = "Error! Username should have 6 characters and should be alpha numeric."   
       ret_value = true;
      }
     }
        
     if(!ret_value){
       field = document.getElementById("_ifirstname").value;
       if(field.toString() == "" || field.toString().length < 2 || !field.match(alpha))
       {out_text = "Firstname Invalid, has to have atleast 2 characters and should be alphabets only."   
        ret_value = true;
      }
     }
        
        
     if(!ret_value){
       field = document.getElementById("_ilastname").value;
       if(field.toString() == "" || field.toString().length < 2 || !field.match(alpha))
       {out_text = "Lastname Invalid, has to have atleast 2 characters and should be alphabets only."   
        ret_value = true;
      }
     }
        
        
     if(!ret_value){
       field = document.getElementById("_imiddlename").value;
       if(field.toString() == "" || field.toString().length < 2 || !field.match(alpha))
       {out_text = "Middlename Invalid, has to have atleast 2 characters and should be alphabets only."   
        ret_value = true;
      }
     }   
        
     if(!ret_value){
       field = document.getElementById("_iphone").value;
       if(field.toString().length != 10 || !field.match(numeric))
       {out_text = "Phone Invalid, has to have 10 digits only."   
        ret_value = true;
      }
     }   
    
     if(!ret_value){
       field = document.getElementById("_ipassword").value;
       if(field.toString().length < 5 || field.match(numeric) || field.match(alpha)  || !field.match(alpha_numeric) )
       {out_text = "Password Invalid, has to be alpha numeric and size greater than 5."   
        ret_value = true;
      }
     }       
        
     if(!ret_value){
       field = document.getElementById("_iconfirm_password").value;
       var match_field = document.getElementById("_ipassword").value;
      if (!(field === match_field))
       {
           out_text = "Passwords do not match."   
        ret_value = true;
         }
        }       
        
        
      if (!ret_value)
      {
      
       alert("Successfully Registered!");      
       window.location = "logged.html";
            
            // Do the successful validation of form.
          
      }
      else{
           alert(out_text);      
            document.getElementById("_ioutput_message").innerHTML = out_text;      
        }
   }    
   
    </script>

    
    
    
    <div style="text-align:center">
            <h2><font color = "white"> Enter the Login Credentials </font> </h2> 
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
            <td><font color = "white">USERNAME</font></td>
            <td><input type ="text" name ="_username" id = "_iusername"></td>
            </tr>
            
            <tr>
            <td><font color = "white">FIRSTNAME</font></td>
            <td><input type ="text" name ="_firstname" id = "_ifirstname"></td>
            </tr>
            
            <tr>
            <td><font color = "white">LASTNAME</font></td>
            <td><input type ="text" name ="_lastname" id = "_ilastname"></td>
            </tr>
            
            <tr>
            <td><font color = "white">MIDDLENAME</font></td>
            <td><input type ="text" name ="_middlename" id = "_imiddlename"></td>
            </tr>
            
            <tr>
            <td><font color = "white">SEX</font></td>
            <td><input type="radio" name="gender" value="male" id ="_iradio_male" checked> <font color = "white"> Male</font>
                <input type="radio" name="gender" value="female" id ="_iradio_female"> <font color = "white"> Female</font>
            </td>
            </tr>
            
            <tr>
            <td><font color = "white">PHONE</font></td>
            <td><input type ="text" name ="_phone" id = "_iphone"></td>
            </tr>
            
            <tr>
            <td><font color = "white">PASSWORD</font></td>
            <td><input type ="password" name ="_password" id = "_ipassword"></td>
            </tr>
            
            <tr>
            <td><font color = "white">CONFIRM PASSWORD</font></td>
            <td><input type ="password" name ="_confirm_password" id = "_iconfirm_password"></td>
            </tr>
            
            <tr>
            <td colspan = "2"> <input type ="button" class="button_large" id="inext_button" value="SUBMIT" onClick = "_validate_signup()"/> </td>
            </tr>
        </table>    
    </fieldset>
    </form>
    </div>
             <p class = "error" id = "_ioutput_message"> </p>
    </body>
</html>
