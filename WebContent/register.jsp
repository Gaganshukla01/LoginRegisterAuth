<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<center>
	<h1>Register Page</h1>
	
	<form action="register" method="post">
     <h3 >Enter Your Name</h3>
     <input id="name" type="text" required name="name" onInput="namecheck()"></br>
     <span id="namec" style="color:red"></span>
      <h3>Enter Your Email</h3>
     <input  id="email" type="text" required name="email" onchange="emailcheck()"></br>
     <span id="emailc" style="color:red"></span>
     <h3>Enter Your Password</h3>
     <input  id="pass" type="password" required name="password" onInput="passcheck()" ></br>
     <span id="passc" style="color:red"></span>
      <h3>Confirm Password</h3>
     <input  id="cpass" type="password" required name="cpassword" onchange="cpasscheck()"></br>
     <span id="confirmc" style="color:red"></span></br>
     
      <input style="margin-top:20px" type="submit"/>
      
      </center>
	</form>
	
	
	<center>
	<a href="login.jsp"  "><button style="margin-top:20px">Login</button></a>
	</center>
	
	
	
<script>

  const namecheck = () => {
    let name = document.getElementById("name").value;
    let l = name.length;
    if (l > 20) {
      document.getElementById("namec").innerHTML = "Name Should not be greater than 20";
    }
    else{
    	document.getElementById("namec").innerHTML = " ";
    }
  }

  const emailcheck =()=> {
    let email = document.getElementById("email").value;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@yash\.com$/;
    if (!emailPattern.test(email)) {
      document.getElementById("emailc").innerHTML = "Enter mail id in @yash.com Format";
    }
    else{
    	 document.getElementById("emailc").innerHTML = "";
    }
  }
  
  const passcheck=()=>{
	  let pass=document.getElementById("pass").value;
	  const passpattern=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	  if(!passpattern.test(pass)){
		  document.getElementById("passc").innerHTML="Minimum eight characters, at least one letter, one number and one special character:";
	  }
	  else{
		  document.getElementById("passc").innerHTML="";
	  }
  }

  

  const cpasscheck = () => {
    let pass = document.getElementById("pass").value;
    let cpass = document.getElementById("cpass").value;
    if (pass != cpass) {
 
      document.getElementById("confirmc").innerHTML = "Password is not matching with confirm password";
    }
    else{
    	 document.getElementById("confirmc").innerHTML = "";
    }
  }
	  
	  
	  
	  
</script>

</body>
</html>