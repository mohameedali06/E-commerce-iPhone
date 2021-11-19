package com.ecommerce.main.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Orders {
	
	@Id
	@GeneratedValue
	private int orderId;
	private int userId;
	private double orderAmount;
	private LocalDateTime orderDate;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public double getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(double d) {
		this.orderAmount = d;
	}
	public LocalDateTime getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", orderAmount=" + orderAmount + ", orderDate="
				+ orderDate + "]";
	}
	
	
}
