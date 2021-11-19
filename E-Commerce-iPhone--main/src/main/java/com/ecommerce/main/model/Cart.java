package com.ecommerce.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cart {

	@Id
	@GeneratedValue
	private int cartId;
	private int userId;
	private int prodId;
	private String prodName;
	private String prodImgSrc;
	private int prodNos;
	private double prodTotalPrice;
	private double cartTotalPrice;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdImgSrc() {
		return prodImgSrc;
	}

	public void setProdImgSrc(String prodImgSrc) {
		this.prodImgSrc = prodImgSrc;
	}

	public int getProdNos() {
		return prodNos;
	}

	public void setProdNos(int prodNos) {
		this.prodNos = prodNos;
	}

	public double getProdTotalPrice() {
		return prodTotalPrice;
	}

	public void setProdTotalPrice(double prodTotalPrice) {
		this.prodTotalPrice = prodTotalPrice;
	}

	public double getCartTotalPrice() {
		return cartTotalPrice;
	}

	public void setCartTotalPrice(double cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
	}

	

}
