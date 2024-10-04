<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<center>
	<h1>Login Page</h1>
	<form action="login"  method="post">
	
     <h3>Enter Your Email</h3>
     <input id="email" type="text" required name="email" onchange="emailcheck()">
     
     
     <h3>Enter Your Password</h3>
     <input type="text" required name="password"></br>
     
      <input style="margin-top:20px"  type="submit" value="Login"/>
      </center>
	</form>
	<center>
	<a href="register.jsp"  "><button style="margin-top:20px">Sign Up</button></a>
	</center>
	
<script>
  const emailcheck =()=> {
    let email = document.getElementById("email").value;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@yash\.com$/;
    if (!emailPattern.test(email)) {
      alert("Enter valid mail id in @yash.com Format");
      document.getElementById("email").value = "";
    }
  }
</script>
</body>
</html>