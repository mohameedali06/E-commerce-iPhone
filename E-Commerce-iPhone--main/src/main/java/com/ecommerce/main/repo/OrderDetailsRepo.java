package com.ecommerce.main.repo;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.OrderDetails;

public interface OrderDetailsRepo extends CrudRepository<OrderDetails, Integer> {
	public OrderDetails findByOrderId(int orderId);
}
