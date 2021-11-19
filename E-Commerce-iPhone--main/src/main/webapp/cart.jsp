<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Cart</title>

</head>
<style>
	
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
  
  .container {
  box-shadow: 1px lightgrey;
  padding: 30px;
}

.main {
  display: flex;
}



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
#img {
  width: 400px;
  height: 250px;
  position: relative;
  padding-left: 100px;
}

.product-count {
  position: absolute;
  top: 25%;
  left: 45%;
  height: 30px;
}

.product-count {
  text-decoration: none;
  font-weight: 700;
  color: black;
  padding-left: 150px;
  padding-top: 100px;
}

.button-count {
  display: inline-block;
  width: 15px;
  height: 15px;
  background-color: #2196f3;
  color: white;
  font-size: 12px;
  line-height: 15px;
  text-align: center;
  border: none;
  outline: none;
}
.button-count:active {
  background-color: #1565c0;
}

.number-product {
  display: inline-block;
  width: 23px;
  height: 14px;
  font-size: 12px;
  border: 1px solid silver;
  text-align: center;
}

:disabled {
  background-color: silver;
}

.prod-ttl-price {
  padding-left: 100px;
  padding-top: 70px;
}

.cart-price {
  position: absolute;
  left: 1000px;
}
.order-btn {
  display: inline-block;
  background-color: rgb(11, 199, 11);
  border-radius: 6px;
  font-size: 16px;
  color: black;
  text-decoration: none;
  padding: 15px 18px;
  transition: all 0.5s;
  position: absolute;
  left: 1100px;
}


</style>
<body>
	<nav class="button">
		<img style="float: left" src="18.png" width="200px" height="50px" />
		<ul>
			<li><a href="products" class="head">Product</a></li>
			<li class="current"><a href="cart" class="head">Cart</a></li>
			<li><a href="orders" class="head">Orders</a></li>
			<li><a href="profile" class="head">${user.userName}</a></li>
			<li><a href="index.jsp" class="head">Logout</a></li>
		</ul>
	</nav>
	<div class="container">
		<c:forEach items="${cart}" var="prod">
			<div class="main">
				<div class="left-column">
					<img src="${prod.prodImgSrc}.png" alt="${prod.prodName}" width=auto height=250 px>
				</div>
				<div class="right-column">
					<b style="font-size:30px">${prod.prodName}</b>
					<p style="font-size:30px" class="prod-ttl-price">Rs.${prod.prodTotalPrice}</p>
					
				</div>
        
			</div>
    
		</c:forEach>
	</div>
  <p class="cart-price">cart</p>
        <a href="addToOrders" class="order-btn">order</a>	
</body>
</html>
