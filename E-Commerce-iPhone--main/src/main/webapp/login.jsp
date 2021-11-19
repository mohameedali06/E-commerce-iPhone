<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" href="login.css" />
</head>
<style>
body {
	padding: 1em;
	font-size: 15px;
	color: black;
	background-color: white;
}
</style>
<body>
	<form action="loginUser">
		<div class="images">
			<img src="login.png" alt="image" class="image" />
		</div>
		<div class="main">
			<label><b>UserEmail</b></label> <input type="text"
				placeholder="Enter Useremail" name="userEmail" required />
			<label><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="userPassword" required />
			<button type="submit">Login</button>
			<button type="button" class="cancel">Cancel</button>
			<span class="new"> <a href="signup.jsp">New user?</a>
			</span>
		</div>
	</form>
</body>
</html>
