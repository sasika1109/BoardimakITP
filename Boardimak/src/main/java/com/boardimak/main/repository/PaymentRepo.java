package com.boardimak.main.repository;

import org.springframework.data.repository.CrudRepository;

import com.boardimak.main.model.Payments;

public interface PaymentRepo extends CrudRepository<Payments, Integer>{

}
