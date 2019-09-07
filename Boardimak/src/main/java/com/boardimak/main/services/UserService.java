package com.boardimak.main.services;

import java.util.ArrayList;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.stereotype.Service;

import com.boardimak.main.model.User;
import com.boardimak.main.repository.UserRepository;


@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}
	
	public void saveUser(User user) {
		
		userRepository.save(user);
	}
	
	
	public List<User> ShowAllUser(){
		List<User> user = new ArrayList<User>();
		for(User user1 :userRepository.findAll()) {
			user.add(user1);
		}
		return user;
	}
	
	public void deleteUser(int id) {
		userRepository.deleteById(id);
	}
	
	public User editUser(int id) {
		return userRepository.findAllById(id);
	
	}
}



