package com.boardimak.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boardimak.main.model.Bookings;
import com.boardimak.main.model.Property;
import com.boardimak.main.services.BookingsServices;



@Controller
public class BookingsControler {

	@Autowired
	private BookingsServices bookingsServices;
	
	@GetMapping("/bookingsHomestu")
	public String BookingsHomestu(HttpServletRequest request) {
		request.setAttribute("bookings", bookingsServices.findAllBookings());
		return "parstu-all-bookings";
	}
	
	@GetMapping("/bookingsHomesOwner")
	public String BookingsHomesOwner(HttpServletRequest request) {
		request.setAttribute("bookings", bookingsServices.findAllBookings());
		return "owner-all-bookings";
	}
	
	
	
	@GetMapping("/deleteBookingsPar")
	public void deleteBlog(@RequestParam int id, HttpServletRequest request, HttpServletResponse res) throws IOException {
		bookingsServices.deleteBookigs(id);
		res.sendRedirect("/bookingsHomestu");
	}
	
	@GetMapping("/deleteBookingsOwner")
	public void deleteBlogOwner(@RequestParam int id, HttpServletRequest request, HttpServletResponse res) throws IOException {
		Bookings b = bookingsServices.findOneBookings(id);
		b.setStatus("Reject");
		bookingsServices.saveBookings(b);
		res.sendRedirect("/bookingsHomesOwner");
		
	}
	
	
	@GetMapping("/sigleProperty")
	public String SigleProperty( HttpServletRequest request) {
		/* request.setAttribute("bookings", bookingsServices.findOneBookings(id)); */
		
		Property p = new Property(1, 2, "No.1/100", "Malabe road", "Horana", "Room", "10 000/=", "5000/=", 2, "Yes", "Yes", "12 Months", "Status", "This is the description", "These are other facilities");
		request.setAttribute("property", p);
		return "single-property-stuPar";
	}
	
	
	@PostMapping("/bookaProperty")
	public void saveBlog(@ModelAttribute Bookings bookings, HttpServletRequest request, HttpServletResponse res)
			throws IOException {

		
		bookingsServices.saveBookings(bookings);
		res.sendRedirect("/bookingsHomestu");
	}
	
	
	@GetMapping("/editBookings")
	public String editBookings(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("bookings", bookingsServices.findOneBookings(id));
		Property p = new Property(1, 2, "No.1/100", "Malabe road", "Horana", "Any Type", "MonthlyPayment", "Keymoney", 2, "airCondition", "PArking", "TimePeriod", "Status", "description", "otherFacilities");
		request.setAttribute("property", p);
		bookingsServices.deleteBookigs(id);
		return "single-property-stuPar";
	}
	
}
