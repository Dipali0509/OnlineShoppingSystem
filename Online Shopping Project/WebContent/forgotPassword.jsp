<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
<style>
body{
background-image: url("https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg");
}
#container {
    height: 531px;
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
    margin: 12px 0 19px 0;
}
</style>
</head>
<body>
	<div id='container'>
		<div class='signup'>
<form action="forgotPasswordAction.jsp" method="post">
<input type="email" name="email" placeholder="Enter Name" required>
<input type="number" name="mobileNumber" Placeholder= "Enter Mobile Number" required>
<select name="securityQuestion">
<option value="What was your first online product?">What was your first online product?</option>
<option value="What is the name of your first mobile?">What is the name of your first mobile?</option>
<option value="What elementary school did you attend?">What elementary school did you attend?</option>
<option value="What is your favourite desert?">What is your favourite desert?</option>
</select>

<input type="text" name="answer" placeholder="Enter Answer" required>
<input type="password" name="newPassword" placeholder="Enter New Password" required>
<input type="submit" value="Save">
</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
	%>
	<h1>Password Changed Successfully!</h1>
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