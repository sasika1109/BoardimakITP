package com.boardimak.main.services;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

import com.boardimak.main.model.ReplyTicket;
import com.boardimak.main.model.Ticket;
import com.boardimak.main.repository.TicketRepository;

@Service
@Transactional
public class TicketService {
	
	private final TicketRepository userRepository;
	
	public TicketService(TicketRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void saveMyUser(Ticket user) {
		
		userRepository.save(user);
	}
	
	public List<Ticket> ShowAllUsers(){
		List<Ticket> users = new ArrayList<Ticket>();
		for(Ticket user :userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public void deleteMyUsers(int id) {
		userRepository.deleteById(id);
	}
	
	public Ticket editMyUser(int id) {
	return userRepository.findAllById(id);
	
	}

	public Ticket findByname(String name) {
		return userRepository.findByname(name);
	}

	



}
