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

import com.boardimak.main.model.Promotion;
import com.boardimak.main.services.PromotionServices;



@Controller
public class PromotionController {

	@Autowired
	private PromotionServices promotionService;

    //show  all promotion page to property owner
    @GetMapping("/show-promotion")
	public String showAllPromotion(HttpServletRequest request) {
		request.setAttribute("promotion",promotionService.ShowAllPromotion());
		
		return "promotionhome";
	}
	
	    //get the page for adding new promotion
	@GetMapping("/new-promotion")
	public String newPromotion(HttpServletRequest request) {
		return "addpromotion";
	}
	
	//add promotion and display it
	@PostMapping("/add-promotion")
	public void addPromotion(@ModelAttribute Promotion pro,BindingResult bindingResult,HttpServletRequest request, HttpServletResponse res) throws IOException {
		promotionService.savePromotion(pro);
		res.sendRedirect("/show-promotion");
	}

	//delete promotion
	@RequestMapping("/delete-promotion")
	public String deletePromotion(@RequestParam int id,HttpServletRequest request) {
		promotionService.deletePromotion(id);
		request.setAttribute("promotion",promotionService.ShowAllPromotion());
		
		return "promotionhome";
	}
	
	//edit promotion
	@RequestMapping("/edit-promotion")
	public String editPromotion(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("p",promotionService.editPromotion(id));
		//promotionService.deletePromotion(id);
		return "editpromotion";
	}
	
	//show all promotion to admin
	@GetMapping("/admin-promotion")
	public String showAllPromotionAdmin(HttpServletRequest request) {
		request.setAttribute("promotion",promotionService.ShowAllPromotion());
		
		return "adminpromotion";
	}
	
	//real very first promotion page
	@GetMapping("/show-first")
	public String showFrist(HttpServletRequest request) {
		request.setAttribute("promotion",promotionService.ShowAllPromotion());
		
		return "firstpromotion";
	}
	
	    //real all promotion page
	@GetMapping("/show-real")
	public String showReal(HttpServletRequest request) {
		request.setAttribute("promotion",promotionService.ShowAllPromotion());
		
		return "realpromotion";
	}

}
