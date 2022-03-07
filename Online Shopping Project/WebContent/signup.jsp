<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<style>
body {
	background-image:
		url("https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg");
}

#container {
	height: 626px;
	background-color: white;
}

.signup {
	height: fit-content;
}

.whysignlogin {
	height: fit-content;
}

img {
	width: inherit;
}

p {
	color: rgba(0, 0, 0, .6);
	font-size: 1.2em;
	margin: 21px 0 21px 0;
}
</style>
</head>

<body>

	<div id='container'>
		<div class='signup'>

			<form action="signupAction.jsp" method="post" onsubmit="return validate()">

				<input type="text" name="name" placeholder="Enter Name" required>
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
				 <select name="securityQuestion">
					<option value="What was your first online product?">What was your first online product?</option>
					<option value="What is the brand of your first Mobile?">What is the brand of your first Mobile?</option>
					<option value="Which elementary school did you attend?">Which elementary school did you attend?</option>
					<option value="What is your favourite desert?">What is your favourite desert?</option>
				</select> 
				<input type="text" name="answer" placeholder="Enter answer" required> 
				<input type="password" name="password" placeholder="Enter Password" id="password" required> 
					<input type="password" name="confirmPassword" placeholder="Confirm Password" id="confirmPassword" required>
				<input type="submit" value="SignUp">
			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
				String msg = request.getParameter("msg");
				if ("valid".equals(msg)) {
			%>
			<h1>Successfully Registered !!</h1>
			<%
				}
			%>
			<%
				if ("invalid".equals(msg)) {
			%>
			<h1>Something Went Wrong! Try Again !</h1>
			<%
				}
			%>
			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
			<img src="images/shopping.jpg" />
		</div>
	</div>
	<script>
		function validate() {
			var password = document.getElementById("password").value;
			var confirmPassword = document.getElementById("confirmPassword").value;
			if (password != confirmPassword) {
				alert("password is not matching");
				return false;
			}
		}
	</script>
</body>
</html>