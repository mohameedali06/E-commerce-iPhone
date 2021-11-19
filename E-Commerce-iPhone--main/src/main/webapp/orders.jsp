<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Orders</title>

<style>
	.left-column {
   width: 300px;
  height: 400px;
  margin-top:50px;
	margin-left:80px;	
}
	
.right-column {
 
  width: 700px;
  height: 400px; 
  margin-top:50px;
	margin-left:80px;	 
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
  .main {
  display: flex;
}
.container {
  box-shadow: 1px lightgrey;
  padding: 30px;
}
</style>
<script>
	
</script>
</head>
<body>
	<nav class="button">
		<img style="float: left" src="18.png" width="200px" height="50px" />
		<ul>
			<li><a href="products" class="head">Product</a></li>
			<li><a href="cart" class="head">Cart</a></li>
			<li class="current"><a href="orders" class="head">Orders</a></li>
			<li><a href="profile" class="head">${user.userName}</a></li>
			<li><a href="index.jsp" class="head">Logout</a></li>
		</ul>
	</nav>
	<div class="container">
		<c:forEach items="${order}" var="ord">
			<div class="main">
				<div class="left-column">
					<img id="img" src="${ord.prodImgSrc}.png" alt="${ord.prodName}" width=auto height=250 px >
				</div>
				<div class="right-column">
					${ord.prodName} ${ord.prodNos}
					<p class="prod-ttl-price">${ord.prodTotalPrice}</p>
				</div>
			</div>
			<hr style="height:0.1px;border-width:0;color:rgb(10, 10, 10);background-color: rgb(17, 16, 16);">	
	</hr>
		</c:forEach>
	</div>
</body>
</html>
