package com.darshan.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.darshan.hotel.dao.HotelSearchDao;
import com.darshan.hotel.entity.Hotel;
import com.darshan.hotel.model.HotelReservation;

@Service
public class HotelSearchService {

	@Autowired
	private HotelSearchDao hotelSearchDao;

	@Transactional
	public Map<String, String> getCities() {
		return hotelSearchDao.getCities();
	}

	@Transactional
	public List<Hotel> getHotelsForCity(String city) {
		return hotelSearchDao.getHotelsForCity(city);
	}

	@Transactional
	public List<Hotel> searchHotel(HotelReservation hotelReservation) {
		return hotelSearchDao.searchHotel(hotelReservation);
	}
}
