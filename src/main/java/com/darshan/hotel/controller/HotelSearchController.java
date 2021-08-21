package com.darshan.hotel.controller;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.darshan.hotel.entity.Hotel;
import com.darshan.hotel.model.GuestDetails;
import com.darshan.hotel.model.HotelReservation;
import com.darshan.hotel.service.HotelSearchService;

@Controller
@RequestMapping("/hotel")
public class HotelSearchController {

	@Autowired
	private HotelSearchService hotelSearchService;

	@GetMapping("/search")
	public String showSearchForm(Model model) {

		Map<String, String> cities = hotelSearchService.getCities();
		model.addAttribute("cities", cities);
		if (!model.containsAttribute("model")) {
			model.addAttribute("model", new HotelReservation());
		} else {
			HotelReservation hotelReservation = (HotelReservation) model.getAttribute("model");
			String city = hotelReservation.getCity();
			if (city != null) {
				Map<String, String> hotels = hotelSearchService.getHotelsForCity(city).stream()
						.collect(Collectors.toMap(Hotel::getId, Hotel::getName));
				model.addAttribute("hotels", hotels);
			}
		}
		return "hotel-search";
	}

	@PostMapping("/hotel-details")
	public String searchHotel(@Valid @ModelAttribute("model") HotelReservation hotelReservation, BindingResult results,
			Model model, RedirectAttributes redirectAttributes) {

		if (results.hasErrors()) {
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.model", results);
			redirectAttributes.addFlashAttribute("model", hotelReservation);
			return "redirect:/hotel/search";
		}
		List<Hotel> hotel = hotelSearchService.searchHotel(hotelReservation);
		if (hotel.isEmpty()) {
			return "no-hotel";
		}
		model.addAttribute("hotelDetails", hotel.get(0));
		return "hotel-details";
	}

	@PostMapping("/guest-details")
	public String guestDetails(@RequestParam String hotelName, Model model) {

		model.addAttribute("guestDetails", new GuestDetails());
		model.addAttribute("hotelName", hotelName);
		return "guest-details";
	}

	@PostMapping("/confirmation")
	public String confirmation(@Valid @ModelAttribute("guestDetails") GuestDetails guestDetails, BindingResult results,
			@RequestParam String hotelName, Model model) {

		model.addAttribute("guestDetails", guestDetails);
		model.addAttribute("hotelName", hotelName);

		return results.hasErrors() ? "guest-details" : "confirmation";
	}

	@InitBinder
	public void inititalBinder(WebDataBinder binder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		binder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

}
