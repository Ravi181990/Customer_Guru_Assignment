<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>99rstreet</title>
        <!-- Bootstrap core CSS test -->
    <!--   <script type='text/javascript' src='JS/validation.js'></script>
<link rel="stylesheet" href="CSS/style.css" type="text/css">
         <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
     -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

     
    <!--      <script type="text/javascript" src="vendor/bootstrap/js/page1.js"></script>
      --> 

        <style>
            .checkboxes {
                columns: 3 ;
            }
        </style>
       
        <style type="text/css">
         input[type=number].no-spinner::-webkit-inner-spin-button,
    input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
     margin: 0;
}

tr{
width: 30px;
}
label{
margin-left:6px;
}
#sp{
color: red;
}
tr:hover td,
tr.even:hover td.active,
tr.odd:hover td.active {
background: #FFFEEE;
}

   </style>

    </head>
    <body  id="page-top">

      
            <div class="card mb-3" style="margin-top: 2%;">
               
                <div class="card-body" >
                    <div class="table-responsive">
           
<form name="loginform" action="#" method="post" class="form-signin" onSubmit="return check(this)">
   
                       
   <table border="1" class="table table-bordered" align="center" style="width:50%;" id="dataTable" cellspacing="0">
    
      
     <tr><td><label>Name</label><span id="sp">*</span></td><td>
      <div id="error0" style="color: red;"></div>
     <input type="text" name="name" id="username" required="required" onkeyup="names()" ></td></tr>
      <tr><td><label>Mobile No.</label><span id="sp">*</span></td><td>
        <div id="error1" style="color: red;"></div>
      <input type="text"  name="Mobile" id="Mobile" required="required" maxlength="10" onkeyup="Mobiles()" ></td></tr>
     <tr><td><label>Email</label><span id="sp">*</span></td><td>
     <div id="error2" style="color: red;"></div>
     <input type="text"  name="Email" id="Email" required="required" onkeyup="Emails()"></td></tr>
     <tr><td><label>City</label><span id="sp">*</span></td><td>
      <select name="city" id="city" required="required" style="width:42%;">
     <option disabled="disabled" selected="selected">Select City</option>
      <option >Delhi</option>
       <option >Mumbai</option>
        <option >kolkata</option>
         <option >Chennai</option>
          <option>Bangalore</option>
     
     </select>
     </td>
     </tr>  
     
     
        
    </table>
    <center>
    <input type="submit" name="submit" value="Submit"/>
    
    </center>
    </form>
    </div>
    </div>
    </div>
   
   <script>
     
       function names()
       {
        var user = document.getElementById("username").value;
       var regex1=/^[a-zA-Z\s]+$/;
       if(user=="")
       {	
           document.getElementById("error0").innerHTML="Enter UserID";
       return false;
       }
       
       else if(!user.match(regex1))
       {
           document.getElementById("error0").innerHTML="Enter only alphabets";
       return false;
       }
       else if(user.match(regex1))
   {
           document.getElementById("error0").innerHTML="";
       return true;
   }

       }   
       function Mobiles()
       {
           var phone = document.getElementById("Mobile").value;
           var regex=/^[0-9]+$/;
           if(phone=="")
           {
               document.getElementById("error1").innerHTML="Enter Mobile numbers";   
           return false;
           }
           
           else if(!phone.match(regex))
           {
           document.getElementById("error1").innerHTML="Enter only numbers";
           return false;
           }
           else if(phone.match(regex))
       {
               document.getElementById("error1").innerHTML="";
           return true;
       }
       }

       function Emails()
       {
       var mail = document.getElementById("Email").value;
           var regex=/^([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)@([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)[\\.]([a-zA-Z]{2,9})$/;;
           if(mail=="")
           {
               document.getElementById("error2").innerHTML="Enter Email ID ";   
               return false;
           }
           else if(!mail.match(regex))
           {
           document.getElementById("error2").innerHTML="Enter Valid Email ID";
           return false;
           }
           else if(mail.match(regex))
       {
               document.getElementById("error2").innerHTML="";
           return true;
       }
       }
       
      

       </script>    
        
</body>
</html>
