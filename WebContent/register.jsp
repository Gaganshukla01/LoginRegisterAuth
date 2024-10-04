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
     <input id="name" type="text" required name="name" onchange="namecheck()">
     
      <h3>Enter Your Email</h3>
     <input  id="email" type="text" required name="email" onchange="emailcheck()">
     
     
     
     <h3>Enter Your Password</h3>
     <input  id="pass" type="text" required name="password" ></br>
      
      <h3>Confirm Password</h3>
     <input  id="cpass" type="text" required name="cpassword" onchange="passcheck()"></br>
     
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
      alert("Max character count is 20");
      document.getElementById("name").value = "";
    }
  }

  const emailcheck =()=> {
    let email = document.getElementById("email").value;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@yash\.com$/;
    if (!emailPattern.test(email)) {
      alert("Enter valid mail id in @yash.com Format");
      document.getElementById("email").value = "";
    }
  }

  const passcheck = () => {
    let pass = document.getElementById("pass").value;
    let cpass = document.getElementById("cpass").value;
    if (pass != cpass) {
      alert("Password is not matching with confirm password");
      document.getElementById("pass").value = "";
      document.getElementById("cpass").value = "";
    }
  }
	  
	  
	  
	  
</script>

</body>
</html>