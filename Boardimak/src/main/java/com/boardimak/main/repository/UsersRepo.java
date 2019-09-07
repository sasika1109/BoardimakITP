package com.boardimak.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boardimak.main.model.Users;

public interface UsersRepo extends JpaRepository<Users, Integer>{

	Users findAllByEmail(String email);
}
