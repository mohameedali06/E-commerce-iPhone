package com.ecommerce.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class OrderDetails {

	@Id
	@GeneratedValue
	private int orderDetailsId;
	private int orderId;
	private int prodId;
	private String prodImgSrc;
	private String prodName;
	private int prodNos;
	private double prodTotalPrice;

	public int getOrderDetailsId() {
		return orderDetailsId;
	}

	public void setOrderDetailsId(int orderDetailsId) {
		this.orderDetailsId = orderDetailsId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}

	public String getProdImgSrc() {
		return prodImgSrc;
	}

	public void setProdImgSrc(String prodImgSrc) {
		this.prodImgSrc = prodImgSrc;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
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

	public void setProdTotalPrice(double d) {
		this.prodTotalPrice = d;
	}

}
