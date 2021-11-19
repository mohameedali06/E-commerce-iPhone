package com.ecommerce.main.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.Orders;

public interface OrdersRepo extends CrudRepository<Orders , Integer>{
	public List<Orders> findAllByUserId(int userId);

}
