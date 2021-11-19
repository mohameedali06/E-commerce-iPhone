package com.ecommerce.main.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.main.model.Cart;
import com.ecommerce.main.model.OrderDetails;
import com.ecommerce.main.model.Orders;
import com.ecommerce.main.model.Products;
import com.ecommerce.main.model.User;
import com.ecommerce.main.repo.CartRepo;
import com.ecommerce.main.repo.OrderDetailsRepo;
import com.ecommerce.main.repo.OrdersRepo;
import com.ecommerce.main.repo.ProductsRepo;
import com.ecommerce.main.repo.UserRepo;

@Controller
public class HomeController {

	@Autowired
	ProductsRepo productsrepo;
	@Autowired
	UserRepo userrepo;
	@Autowired
	CartRepo cartrepo;
	@Autowired
	OrdersRepo ordersrepo;
	@Autowired
	OrderDetailsRepo orderdetailsrepo;

	ModelAndView mv = new ModelAndView();

	@RequestMapping("profile")
	public ModelAndView profile(HttpSession session) {
		mv.addObject(session.getAttribute("user"));
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("home")
	public ModelAndView home(HttpSession session) {
		mv.addObject(session.getAttribute("user"));
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping("updateProfile")
	public ModelAndView updateProfile(HttpSession session, User user) {
		user.setUserId(((User) session.getAttribute("user")).getUserId());
		userrepo.save(user);
		mv.addObject(user);
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("products")
	public ModelAndView product() {
		List<Products> productslist = (List<Products>) productsrepo.findAll();
		mv.addObject("product", productslist);
		mv.setViewName("product");
		return mv;
	}

	@RequestMapping("productdetails")
	public ModelAndView productDetails(Products product) {
		Products products = productsrepo.findById(product.getProdId()).orElse(new Products());
		mv.addObject(products);
		mv.setViewName("productdetails");
		return mv;
	}

	@RequestMapping("addToCart")
	public String addToCart(HttpSession session, Cart cart) {
		Products product = productsrepo.findById(cart.getProdId()).orElse(null);
		cart.setProdName(product.getProdName());
		cart.setProdImgSrc(product.getProdImgSrc());
		cart.setProdNos(1);
		cart.setUserId(((User) session.getAttribute("user")).getUserId());
		cart.setCartTotalPrice(product.getProdPrice());
		cart.setProdTotalPrice(product.getProdPrice());
		cartrepo.save(cart);
		return "redirect:/products";
	}

	@RequestMapping("cart")
	public ModelAndView cart() {
		List<Cart> cartlist = (List<Cart>) cartrepo.findAll();
		mv.addObject("cart", cartlist);
		mv.setViewName("cart");
		return mv;

	}

	@RequestMapping("addToOrders")
	public String addToOrders(HttpSession session) {

		int cartTotalPrice = 0;
		int userid = ((User) session.getAttribute("user")).getUserId();
		Orders orders = new Orders();
		ordersrepo.save(orders);
		orders.setUserId(userid);
		orders.setOrderDate(LocalDateTime.now());
		OrderDetails orderdetails = new OrderDetails();
		List<Cart> cartlist = cartrepo.findAllByUserId(userid);
		for (int i = 0; i < cartlist.size(); i++) {

			Cart cart = cartlist.get(i);
			orderdetails.setOrderId(orders.getOrderId());
			orderdetails.setProdId(cart.getProdId());
			orderdetails.setProdImgSrc(cart.getProdImgSrc());
			orderdetails.setProdName(cart.getProdName());
			orderdetails.setProdNos(cart.getProdNos());
			orderdetails.setProdTotalPrice(cart.getProdTotalPrice());
			orderdetailsrepo.save(orderdetails);
			cartTotalPrice += cart.getProdTotalPrice();
		}
		orders.setOrderAmount(cartTotalPrice);
		ordersrepo.save(orders);
		cartrepo.deleteAll();
		return "redirect:/cart";
	}
	
	@RequestMapping("addToBuy")
	public String buy(HttpSession session, Products product) {
		Products products = productsrepo.findById(product.getProdId()).orElse(new Products());
		Orders orders = new Orders();
		orders.setUserId(((User) session.getAttribute("user")).getUserId());
		orders.setOrderDate(LocalDateTime.now());
		orders.setOrderAmount(products.getProdPrice());
		ordersrepo.save(orders);
		OrderDetails orderdetails = new OrderDetails();
		orderdetails.setOrderId(orders.getOrderId());
		orderdetails.setProdId(products.getProdId());
		orderdetails.setProdImgSrc(products.getProdImgSrc());
		orderdetails.setProdName(products.getProdName());
		orderdetails.setProdNos(1);
		orderdetails.setProdTotalPrice(products.getProdPrice());
		orderdetailsrepo.save(orderdetails);
		return "redirect:/products";
	}

	@RequestMapping("orders")
	public ModelAndView orders(HttpSession session) {
		List<Orders> orderlist = ordersrepo.findAllByUserId(((User) session.getAttribute("user")).getUserId());
		List<OrderDetails> orderdetails = new ArrayList<OrderDetails>();
		for (int i = 0; i < orderlist.size(); i++) {
			orderdetails.add(orderdetailsrepo.findByOrderId((orderlist.get(i)).getOrderId()));
		}
		mv.addObject("order", orderdetails);
		mv.setViewName("orders");
		return mv;
	}
}
