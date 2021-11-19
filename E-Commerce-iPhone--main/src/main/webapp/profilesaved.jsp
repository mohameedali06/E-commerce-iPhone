<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
</head>
<body>
<head>
<link rel="stylesheet" href="profile.css">
</head>
<style>
	
	.images {
            text-align: center;
            margin: 10px 0 10px 0;
        }
      
        img.image {
            width:30%;
			height:40%;
            border-radius:auto;
        }
	
nav{
	flex: 1;
	text-align: right;	
}
a{
    text-decoration: none;
}
ul{
    list-style: none;
}

a{
	text-decoration: none;
	color: black;
	border-color: white;
}
.button ul{
	display: inline-block;
	list-style-type: none;
}

.button ul li{
	margin-right: 20px;
	background-color:azure;
	justify-content: center;
	align-items: center;
	width:auto;
	height: 40px;
	padding: 0 25px ;
	font-size:25px;
	box-shadow: 2px 2px 30px rgba(0,0,0,0.1);
	display: inline-flex;
	margin-top:-8px;
}
.current{
	background-color:aquamarine !important;
}
.button {
	background-color:black;
	overflow: hidden;
  }
 
  table {
  background-color: whitesmoke;
  border: 1px solid azure;
  box-shadow: 1px lightgrey;
  border-radius: 20px;
  width: 500px;
  height: 400px;
  padding: 30px;
  margin-left: 430px;
  margin-top: 0px;
  margin-bottom: 150px;
}
#save1 {
  align-self: center;
  height: 30px;
  justify-content: center;
  align-content: center;
}

</style>
<body>	
	<nav class="button">
		<img style="float: left" src="18.png" width="200px" height="50px" />
		<ul>
			<li><a href="products" class="head"> Product </a></li>
			<li><a href="cart" class="head"> Cart </a></li>
			<li><a href="orders" class="head"> Orders </a></li>
			<li class="current"><a href="profile" class="head"> ${user.userName} </a></li>
			<li><a href="index.jsp" class="head"> Logout </a></li>
		</ul>
	</nav>
	<div class="images">
		<img src="26.png" alt="image" class="image" />
	  </div>
<table>
	
	<tr>
		<td><label style="color: black;">UserName:</label></td>
		<td><p>${user.userName}</p></td>
	</tr>
	<tr>
		<td><label style="color: black;">UserEmail:</label></td>
		<td><p>${user.userEmail}</p></td>
	</tr>
	<tr>
		<td><label style="color: black;">UserPhoneno:</label></td>
		<td><p>${user.userPhoneNumber}</p></td>
	</tr>
	<tr>
		<td><label for="Address" style="color: black;">UserAddress:</label></td>
		<td><p>${user.userAddress}</p></td>
	</tr>
	<tr>
		<td><label style="color: black;">Password:</label></td>
		<td><p>${user.userPassword}</p></td>
	</tr>
	<tr>
		<td><a href="home"><input type="submit" id="save1"
				value="Back"></a></td>
		<td><a href="profileEditable.jsp"><input
				style="margin-left: 300px;" type="submit" id="save1" value="Edit"></a></td>

	</tr>
</table>
</div>
</body>
</html>
