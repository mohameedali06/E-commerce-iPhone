<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>OrderDetails</title>
<link rel="stylef="cart.css" />
<script>
	
</script>

</head>
<body>
	<div class="container">
		<c:forEach items="${cart}" var="prod">

			<div class="main">
				<div class="left-column">
					<img id="img" src="${prod.prodImgSrc}" alt="${prod.prodName}">
				</div>
				<div class="right-column">
					${prod.prodName}
					<p class="prod-ttl-price">total price here</p>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="main1">
		<p class="cart-price">cart price here</p>
		<a class="order-btn">order</a>
	</div>
</body>
</html>
