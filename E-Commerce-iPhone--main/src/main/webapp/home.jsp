<!DOCTYPE html>
<html>
<head>
<title>Order Now</title>
<link rel="stylesheet" href="style.css">
</head>
<style>
	body{
		background-color:azure;
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

	</style>
<body>
	
		<nav class="button">
			<img style="float: left" src="18.png" width="200px" height="50px" />
			<ul>
				<li><a href="products" class="head">Product</a></li>
				<li><a href="cart" class="head">Cart</a></li>
				<li><a href="orders" class="head">Orders</a></li>
				<li><a href="profile" class="head">${user.userName}</a></li>
				<li><a href="/" class="head">Logout</a></li>
			</ul>
		</nav>
		<div class="main">
		<div class="image"> 
			<img src="1.png">
			
			</div>
			<div class="image"> 
				<img src="2.png">
				
				</div>
				<div class="image"> 
					<img src="3.png">
					
					</div>
					<div class="image"> 
						<img src="4.png">
						
						</div>
						<a href="products" class="cart">See more</a>
					</div>
</body>
</html>