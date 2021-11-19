package com.ecommerce.main.repo;

import org.springframework.context.annotation.Scope;
import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.Products;

@Scope("singleton")
public interface ProductsRepo extends CrudRepository<Products, Integer> {

}
