package com.darshan.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.darshan.hotel.entity.Hotel;
import com.darshan.hotel.service.HotelSearchService;

@RestController
@RequestMapping("/hotel")
public class HotelReservationRestController {

	@Autowired
	private HotelSearchService hotelSearchService;

	@GetMapping(value = "/hotels/{city}", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Hotel> getHotels(@PathVariable String city) {

		return hotelSearchService.getHotelsForCity(city);
	}

}
