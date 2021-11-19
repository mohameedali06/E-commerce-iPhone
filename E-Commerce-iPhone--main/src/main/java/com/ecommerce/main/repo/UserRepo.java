package com.ecommerce.main.repo;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.User;

public interface UserRepo extends CrudRepository<User, Integer>{
	public User findByUserEmail(String userEmail);
}
