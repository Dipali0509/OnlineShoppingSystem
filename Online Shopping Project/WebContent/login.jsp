<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<style>
body{
background-image: url("https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg");
}
#container {
    height: 626px;
    background-color: white;
}
.signup{
height: fit-content;
}
.whysignlogin{
height: fit-content;
}
img{
width: inherit;
}
p {
    color: rgba(0, 0, 0, .6);
    font-size: 1.2em;
    margin: 12px 0 21px 0;
}


</style>
</head>
<body>
	<div id='container'>
		<div class='signup'>
<form action="loginAction.jsp" method="post">
<input type="email" name="email" placeholder="Enter Email" required>
<input type="password" name="password" placeholder="Enter Password" required>
<input type="submit" value="Login">
</form>
			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
		<%
		String msg = request.getParameter("msg");
		if("notexist".equals(msg)){
			%>
			<h1>Incorrect Username or Password</h1>
			<%
		}
			%>
		
<%
if("invalid".equals(msg)){
	%>
	<h1>Something Went Wrong! Try Again !</h1>
	<%
}
	%>
	
			<h2>Online Shopping</h2>
			<p>Fashion is a trend. <br> Dress how you want to be <strong>ADDRESSED</strong>.</p>
				<img src="images/shopping.jpg">
		</div>
	</div>

</body>
</html>