package com.boardimak.main.repository;


import org.springframework.data.repository.CrudRepository;

import com.boardimak.main.model.Promotion;



public interface PromotionRepository extends CrudRepository<Promotion, Integer>{

	Promotion findAllById(int id);
	
	//public Ticket findByUsernameAndPassword(String username,String password);
}




