package com.boardimak.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boardimak.main.model.ReplyTicket;
import com.boardimak.main.model.Ticket;
import com.boardimak.main.services.NotificationService;
import com.boardimak.main.services.TicketReplyService;
import com.boardimak.main.services.TicketService;
@Controller
public class TicketController {
	
	private Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	@Autowired
	private TicketService userService;
	@Autowired
	private  TicketReplyService ticketreplyservice;
	@Autowired
	private NotificationService notificationService;
	

	/* -----------------------------USER CONTROLE--------------------*/
	@GetMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "support-ticket";
	}
	@GetMapping("/ticket")
	public String showTickets(HttpServletRequest request) {
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "MODE_TICKET");
		return "support-ticket";
	}
		
	@GetMapping("/register")
	public String Registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "support-ticket";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute Ticket user,BindingResult bindingResult,HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		try {
			Ticket ticket = new Ticket();
			notificationService.sendNotification(ticket);	
		}catch(MailException e) {
			logger.info("Error sending Email" + e.getMessage());
		}
		return "support-ticket";
	}

	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id,HttpServletRequest request) {
		userService.deleteMyUsers(id);
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "MODE_TICKET");
		return "support-ticket";
	}
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("mode","MODE_UPDATE");
		return "support-ticket";
	}
	
	@GetMapping("/open-Userticket")
	public String OpenUserTicket(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("replys",ticketreplyservice.ShowReply());
		request.setAttribute("mode", "OPEN_USERTICKET");
		return "support-ticket";
	}
	
	@GetMapping("/ticket-UserReply")
	public String UserTicketReply(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("replys",ticketreplyservice.ShowReply());
		request.setAttribute("mode", "OPEN_USERREPLY");
		return "support-ticket";
	}
	
	@GetMapping("/login")
	public String Login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
/* -----------------------------ADMIN CONTROLE--------------------*/
	@GetMapping("/show-ticket")
	public String showAllUser(HttpServletRequest request) {
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "ALL_TICKET");
		return "support-ticket-admin";
	}
	
	@RequestMapping("/delete-ticket")
	public void deleteTicket(@RequestParam int id,HttpServletRequest request,HttpServletResponse res)throws IOException {
		userService.deleteMyUsers(id);
		//request.setAttribute("users",userService.ShowAllUsers());
		//request.setAttribute("mode", "MODE_TICKET");
		//return "support-ticket";
		res.sendRedirect("/show-ticket");
	}
	
	@GetMapping("/open-ticket")
	public String openTicket(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("replys",ticketreplyservice.ShowReply());
		request.setAttribute("mode", "OPEN_TICKET");
		return "support-ticket-admin";
	}
	
	@RequestMapping("/edit-status")
	public String editStatus(@RequestParam int id,HttpServletRequest request,@ModelAttribute Ticket user) {
		Ticket ticket =  userService.editMyUser(id);
		ticket.setStatus("Resloved");
		ticket.getStatus();
		userService.saveMyUser(ticket);
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("replys",ticketreplyservice.ShowReply());
		request.setAttribute("mode","OPEN_TICKET");
		return "support-ticket-admin";
	}
	
	@RequestMapping("/edit-status2")
	public String editStatus2(@RequestParam int id,HttpServletRequest request,@ModelAttribute Ticket user) {
		Ticket ticket =  userService.editMyUser(id);
		ticket.setStatus("Pending");
		ticket.getStatus();
		userService.saveMyUser(ticket);
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("replys",ticketreplyservice.ShowReply());
		request.setAttribute("mode","OPEN_TICKET");
		return "support-ticket-admin";
	}
	
	
	/*---------------------------------------------------------------------------------------------------------------------------*/
	/*----------------------------------------ReplyTicket----------------------------------------*/
	@PostMapping("/replyTicket")
	public void replyticketuser(@ModelAttribute ReplyTicket reply,BindingResult bindingResult,HttpServletRequest request,HttpServletResponse res)throws IOException  {
		ticketreplyservice.saveReplyTicket(reply);
		//request.setAttribute("users",userService.ShowAllUsers());
		//request.setAttribute("user", userService.editMyUser(id));
		//request.setAttribute("mode", "ALL_TICKET");
		res.sendRedirect("/open-Userticket?id= "+reply.getTicket_id());
		//return "support-ticket-admin?id="+rp.getId();
	}
	
	@PostMapping("/replyTicket1")
	public void replyticket(@ModelAttribute ReplyTicket reply,BindingResult bindingResult,HttpServletRequest request,HttpServletResponse res)throws IOException  {
		ticketreplyservice.saveReplyTicket(reply);
		//request.setAttribute("users",userService.ShowAllUsers());
		//request.setAttribute("user", userService.editMyUser(id));
		//request.setAttribute("mode", "ALL_TICKET");
		res.sendRedirect("/open-ticket?id= "+reply.getTicket_id());
		//return "support-ticket-admin?id="+rp.getId();
	}
	
	
	
	
	/*@RequestMapping("/login-user")
	public String loginUser(@ModelAttribute Ticket user,HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
		return "homepage";
		}
		else {
			request.setAttribute("error","Invalid username or password" );
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
	}
	
	@GetMapping("/show-ticket")
	public String showAllUser(HttpServletRequest request,@ModelAttribute Ticket user) {
		if(userService.findByname(user.getName())!=null) {
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "ALL_TICKET");
		return "support-ticket-admin";
		}
		return null;
	}*/
	
}
