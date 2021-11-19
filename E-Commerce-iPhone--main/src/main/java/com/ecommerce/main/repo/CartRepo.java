package com.ecommerce.main.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.Cart;

public interface CartRepo extends CrudRepository<Cart, Integer>{

	public int findByUserId(int userid);

	public List<Cart> findAllByUserId(int userid);
}
