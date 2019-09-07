package com.boardimak.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boardimak.main.model.User;
import com.boardimak.main.services.UserService;





@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/show-users")
	public String showAllUser(HttpServletRequest request) {
		request.setAttribute("user",userService.ShowAllUser());
		
		return "userhome";
		
	
	}
	
	@GetMapping("/new-users")
	public String newUser(HttpServletRequest request) {
		return "adduser";
		
		
	}
	
	@PostMapping("/add-users")
	public void addUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request, HttpServletResponse res) throws IOException {
		User user1 = user;
		user1.setId(5);
		userService.saveUser(user1);
		res.sendRedirect("/show-users");
	}
	
	@RequestMapping("/delete-users")
	public String deleteUser(@RequestParam int id,HttpServletRequest request) {
		userService.deleteUser(id);
		request.setAttribute("user",userService.ShowAllUser());
		
		return "userhome";
	}
	
	@RequestMapping("/edit-users")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("u",userService.editUser(id));
		userService.deleteUser(id);
		return "adduser";
	}
	
}

