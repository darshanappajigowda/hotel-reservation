package com.darshan.hotel.model;

import javax.validation.constraints.NotNull;

public class HotelReservation {

	@NotNull(message = "Please select city")
	private String city;

	@NotNull(message = "Please select hotel")
	private String hotel;

	@NotNull(message = "Please select a date")
	private String date;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
