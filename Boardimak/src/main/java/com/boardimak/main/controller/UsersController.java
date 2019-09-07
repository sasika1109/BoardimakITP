package com.boardimak.main.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boardimak.main.model.Proposal;
import com.boardimak.main.model.Users;
import com.boardimak.main.services.StripeService;
import com.boardimak.main.services.UsersService;
import com.google.gson.JsonObject;
import com.stripe.exception.StripeException;

@Controller
public class UsersController {

	@Autowired
	private UsersService usersservice;

	@Autowired
	private StripeService stripeservice;

	@Value("${stripe.key.secret}")
	private String API_SECRET_KEY;

	@GetMapping("/register-payment")
	public String registerPay() {
		return "register-payment";
	}

	// create stripe customer
	@PostMapping("/createCust")
	public @ResponseBody String createCust(String token, String email) {

		JsonObject result = new JsonObject();
		String customerId = stripeservice.createCustomer(token, email);
		if (customerId.equals("Wrong Email")) {
			result.addProperty("isWorking", "wrongEmail");
		} else if (customerId.equals("Alread Have An Account")) {
			result.addProperty("isWorking", "hasAccount");
		} else {
			result.addProperty("isWorking", "done");
		}
		return result.toString();
	}

	/* Proposal requests */
	@PostMapping("/submit/proposal")
	public String submitMessage(@ModelAttribute Proposal newProposal, BindingResult bindingResult,
			HttpServletRequest request) {
		usersservice.saveProposal(newProposal);
		return "index";
	}

	@RequestMapping("/view/Proposals")
	public String viewProposals(@RequestParam int id, HttpServletRequest request) {
		ArrayList<Proposal> proposals = new ArrayList<>();
		for (Proposal p : usersservice.findProposals()) {
			if (p.getUser_id() == id) {
				proposals.add(p);
			}
		}
		request.setAttribute("proposals", proposals);
		return "view-proposals";
	}

	@RequestMapping("/delete/proposal")
	public String deleteProposal(@RequestParam int id, @RequestParam int userId, HttpServletRequest request) {
		usersservice.deleteProposal(id);
		return "redirect:/view/Proposals?id=" + userId;
	}

	/* Create account requests */

	@GetMapping("/register-owner")
	public String index() {
		return "custom-account";
	}
	
	@PostMapping("/create/owner")
	public String createOwner(@ModelAttribute Users newOwner, BindingResult bindingResult,HttpServletRequest request) {
		System.out.println(newOwner.getEmail());
		usersservice.saveOwner(newOwner);
		return "owner-properties";
	}
	
	@PostMapping("/create-account")
    public @ResponseBody
    String createAccount(String token, String email) throws StripeException {
		JsonObject result = new JsonObject();
		
		System.out.println("create account called");

        String s = stripeservice.createAccount(token, email);
        if(s.equals("wrong email")) {
        	result.addProperty("isWorking", "wrongEmail");
        }else if(s.equals("already has an account")) {
        	result.addProperty("isWorking", "hasAccount");
        }else {
        	result.addProperty("isWorking", "done");
        }
        
        return result.toString();
	}
}
